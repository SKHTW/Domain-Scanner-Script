#!/bin/bash

# Check if required tools are installed
check_dependencies() {
    local missing_counter=0
    for tool in amass nmap curl dig; do
        if ! command -v $tool &> /dev/null; then
            echo "$tool could not be found, please install it."
            ((missing_counter++))
        fi
    done

    if ((missing_counter > 0)); then
        echo "Please install missing dependencies before running this script."
        exit 1
    fi
}

# Function to run the Amass scan
run_amass() {
    local domain=$1
    local output_dir="./$domain"
    mkdir -p "$output_dir"

    echo "Running Amass for $domain..."
    amass enum -active -d $domain -o "$output_dir/${domain}_amass.txt"
}

# Other functions remain the same...

# Main execution loop
main() {
    check_dependencies

    while true; do
        echo "Please enter a domain to scan (or 'q' to quit):"
        read domain
        if [[ "$domain" == "q" ]]; then
            break
        fi

        echo "Which scans would you like to perform for $domain?"
        echo "1. Amass subdomain enumeration"
        echo "2. Test subdomains for HTTP/HTTPS connectivity"
        echo "3. Scan for open ports"
        echo "4. Get the IP address of the domain"
        echo "5. Run all scans"
        read scans

        case $scans in
            1) run_amass "$domain" ;;
            2) test_subdomains "$domain" ;;
            3) scan_ports "$domain" ;;
            4) get_ip "$domain" ;;
            5)
                run_amass "$domain"
                test_subdomains "$domain"
                scan_ports "$domain"
                get_ip "$domain"
                ;;
            *) echo "Invalid input. Please try again." ;;
        esac

        echo "Scan complete for $domain"
    done
}

main
