# n-ssh

An automation tool for system administrators, security engineers, pen testers and related roles.

## Getting Started

This script (`n-ssh.sh`) logs into specific IPs defined in a text file (`hosts.txt`) and executed a user defined task (`task.sh`). Note that the same credentials are used to log into multiple hosts.

## Prerequisites

1. Source and destination hosts are Linux.
1. Bash, ssh and sshpass are installed.

## Usage

1. Git clone this repo: `git clone https://github.com/ayushmanchhabra/n-ssh`
1. Hop into the folder: `cd ./n-ssh`
1. Execute the script: `bash ./n-ssh.sh secret_username secret_password ./hosts.csv ./tasks/info/os_name_version.sh`

## Scenarios

1. Pentester: Check if credentials are valid before doing OS scanning.
1. Security engineer: Check how many IPs are using a vulnerable version of a specific package or packages.
1. System administrator: Filter out ICMP timestamp requests and responses on many IPs using `iptables`.

## License

MIT.

> Legal disclaimer: Usage of n-ssh on hosts without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program.
