#!/usr/bin/env bash

set -o errexit
# set -o pipefail #Illegal option -o pipefail
set -o nounset
set -o xtrace
# set -euo pipefail
echo "===================================================================================="
echo "============================install tshart========================================================"
sudo apt-get update 
sudo apt-get install -y tshark

git clone https://github.com/SecurityNik/SUWtHEh-.git
cd "SUWtHEh-"

echo "===================================================================================="

tshark -r nmap_sn.pcap #read pcap file

tshark -n -r nmap_sn.pcap #Read a pcap, don't resolve names (layers 3 or 4)


echo "===================================================================================="
echo "===================================================================================="
