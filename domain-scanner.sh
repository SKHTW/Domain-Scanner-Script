#!/bin/bash

# Function to run the Amass scan
run_amass() {
  domain=$1
  echo "Running Amass for $domain..."
  amass enum -active -d $domain -o $output_dir/${domain}_amass.txt
}

# Function to test subdomains for connectivity
test_subdomains() {
  domain=$1
  echo "Testing subdomains for $domain..."
  live_subdomains=""
  while read subdomain; do
    echo "Testing $subdomain..."
    if curl -s --head $subdomain 2>&1 | grep "HTTP/1.[01] [23]"; then
      echo "$subdomain is up (HTTP)"
      live_subdomains+="$subdomain"$'\n'
    elif curl -s --head https://$subdomain 2>&1 | grep "HTTP/1.[01] [23]"; then
      echo "$subdomain is up (HTTPS)"
      live_subdomains+="$subdomain"$'\n'
    else
      echo "$subdomain is down"
    fi
  done < "$output_dir/${domain}_amass.txt"

  # Write the live subdomains to a file
  echo -n "$live_subdomains" > "$output_dir/${domain}_live.txt"
}

# Function to scan for open ports
scan_ports() {
  domain=$1
  echo "Scanning ports for $domain..."
  nmap -T4 -sS -Pn $domain -oG $output_dir/${domain}_nmap.gnmap > /dev/null
}

# Function to get the IP address of the domain
get_ip() {
  domain=$1
  echo "Getting IP address for $domain..."
  ip=$(dig +short $domain | head -n 1)
  echo "IP address: $ip"
}

# Loop through the domains and perform the selected scans
while true; do
  echo "Please enter a domain to scan (or 'q' to quit):"
  read domain
  if [[ "$domain" == "q" ]]; then
    break
  fi

  # Create a directory for the output files
  output_dir="./$domain"
  mkdir -p "$output_dir"

  echo "Which scans would you like to perform for $domain?"
  echo "1. Amass subdomain enumeration"
  echo "2. Test subdomains for HTTP/HTTPS connectivity"
  echo "3. Scan for open ports"
  echo "4. Get the IP address of the domain"
  echo "5. Perform all scans"
  read scans

  # Determine which scans to perform
  if [[ "$scans" == "1" ]]; then
    run_amass "$domain"
  elif [[ "$scans" == "2" ]]; then
    test_subdomains "$domain"
  elif [[ "$scans" == "3" ]]; then
    scan_ports "$domain"
  elif [[ "$scans" == "4" ]]; then
    get_ip "$domain"
  elif [[ "$scans" == "5" ]]; then
    run_amass "$domain"
    test_subdomains "$domain"
    scan_ports "$domain"
    get_ip "$domain"
  else
    echo "Invalid input. Please try again."
    continue
  fi

  echo "Scan complete for $domain"
done
