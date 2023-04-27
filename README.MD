README
Domain Scanner
This Bash script is designed to perform a comprehensive scan of a target domain or list of domains, including subdomain enumeration, open port scanning, HTTP/HTTPS connection testing, and directory/file enumeration. The results of each scan are saved to separate files in the 'reports' directory.

Dependencies
The following tools are required to run the script:

Amass
Nmap
cURL

Usage

Clone the repository to your local machine using the following command:

git clone https://github.com/your-username/domain-scanner.git

Install the required dependencies:

sudo apt-get update
sudo apt-get install amass nmap curl

Run the script:

./domain-scanner.sh

Follow the prompts to enter the target domain(s) and select which scans to perform. You can enter a single domain or a list of domains separated by spaces.
The results of each scan will be saved to a separate file in the 'reports' directory. The file names will include the name of the scan type and the target domain. For example, the subdomain enumeration report for 'example.com' would be saved to 'reports/example.com_subdomains.txt'.

License
This project is licensed under the terms of the MIT license. See the LICENSE file for details.
