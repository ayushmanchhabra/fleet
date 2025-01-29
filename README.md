# autossh

An automation tool for system administrators, security engineers, pen testers aand related roles.

## Getting Started

This script (`autossh.sh`) logs into specific IPs defined in a text file (`hosts.txt`) and executed a user defined task (`task.sh`). Note that the same credentials are used to log into multiple hosts.

## Prerequisites

1. Source and destination OS is Linux.
1. Bash, ssh and sshpass are installed.

## Usage

1. Git clone this repo: `git clone https://github.com/ayushmanchhabra/autossh`
1. Hop into the folder: `cd ./autossh`
1. Execute the script: `bash ./autossh.sh secret_username secret_password ./hosts.txt ./task.sh`

