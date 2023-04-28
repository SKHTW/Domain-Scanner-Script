This tool is beneficial for automating recon in bug bounties because it helps to streamline the process of gathering information about a target domain. By automating tasks such as subdomain enumeration, port scanning, and directory enumeration, the tool frees up time for security researchers to focus on more critical tasks such as analyzing vulnerabilities and developing exploits.

Additionally, this tool can now perform scans using Assetfinder, Subfinder, Dnsgen, Massdns, Httprobe, and Aquatone. These scans can help to identify potential attack vectors that might have been missed during manual testing and increase the efficiency of bug bounty hunters.

Overall, this tool can be a valuable addition to the arsenal of any bug bounty hunter looking to improve their efficiency and increase their chances of uncovering vulnerabilities.

README

Domain Scanner

This Bash script is designed to perform a comprehensive scan of a target domain or list of domains, including subdomain enumeration, open port scanning, HTTP/HTTPS connection testing, directory/file enumeration, Assetfinder, Subfinder, Dnsgen, Massdns, Httprobe, and Aquatone. The results of each scan are saved to separate files in the 'reports' directory.

Dependencies

The following tools are required to run the script:

Amass

Nmap

cURL

Assetfinder

Subfinder

Dnsgen

Massdns

Httprobe

Aquatone

Usage

This tool is beneficial for automating recon in bug bounties because it helps to streamline the process of gathering information about a target domain. By automating tasks such as subdomain enumeration, port scanning, and directory enumeration, the tool frees up time for security researchers to focus on more critical tasks such as analyzing vulnerabilities and developing exploits.

Additionally, this tool can now perform scans using Assetfinder, Subfinder, Dnsgen, Massdns, Httprobe, and Aquatone. These scans can help to identify potential attack vectors that might have been missed during manual testing and increase the efficiency of bug bounty hunters.

Overall, this tool can be a valuable addition to the arsenal of any bug bounty hunter looking to improve their efficiency and increase their chances of uncovering vulnerabilities.

README

Domain Scanner

This Bash script is designed to perform a comprehensive scan of a target domain or list of domains, including subdomain enumeration, open port scanning, HTTP/HTTPS connection testing, directory/file enumeration, Assetfinder, Subfinder, Dnsgen, Massdns, Httprobe, and Aquatone. The results of each scan are saved to separate files in the 'reports' directory.

Dependencies

The following tools are required to run the script:

Amass

Nmap

cURL

Assetfinder

Subfinder

Dnsgen

Massdns

Httprobe

Aquatone

Usage

This tool is beneficial for automating recon in bug bounties because it helps to streamline the process of gathering information about a target domain. By automating tasks such as subdomain enumeration, port scanning, and directory enumeration, the tool frees up time for security researchers to focus on more critical tasks such as analyzing vulnerabilities and developing exploits.

Additionally, this tool can now perform scans using Assetfinder, Subfinder, Dnsgen, Massdns, Httprobe, and Aquatone. These scans can help to identify potential attack vectors that might have been missed during manual testing and increase the efficiency of bug bounty hunters.

Overall, this tool can be a valuable addition to the arsenal of any bug bounty hunter looking to improve their efficiency and increase their chances of uncovering vulnerabilities.

README

Domain Scanner

This Bash script is designed to perform a comprehensive scan of a target domain or list of domains, including subdomain enumeration, open port scanning, HTTP/HTTPS connection testing, directory/file enumeration, Assetfinder, Subfinder, Dnsgen, Massdns, Httprobe, and Aquatone. The results of each scan are saved to separate files in the 'reports' directory.

Dependencies

The following tools are required to run the script:

Amass

Nmap

cURL

Assetfinder

Subfinder

Dnsgen

Massdns

Httprobe

Aquatone

Usage

Clone the repository to your local machine using the following command:

git clone https://github.com/SKHTW/Domain-Scanner-Script.git

Change to the cloned directory:

cd Domain-Scanner-Script

Run the requirements.sh script to install the required dependencies:

Change the permission of the domain-scanner.sh script:

chmod +x domain-scanner.sh

Run the domain-scanner.sh script:

./domain-scanner.sh


Follow the prompts to enter the target domain(s) and select which scans to perform. You can enter a single domain or a list of domains separated by spaces. The results of each scan will be saved to a separate file in the reports directory. The file names will include the name of the scan type and the target domain. For example, the subdomain enumeration report for example.com would be saved to reports/example.com_subdomains.txt.

Notice:

Depending on the size and complexity of the website you're scanning, the tool can take some time to complete all of the scans. Please be patient and allow the tool to finish before moving on to your next target. Also, keep in mind that some domains may not have subdomains or open ports, so don't be alarmed if the results are not as extensive as you were hoping for. Happy hunting!

License:

This project is licensed under the terms of the MIT license. See the LICENSE file for details.
