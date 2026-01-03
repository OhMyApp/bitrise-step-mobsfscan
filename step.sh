#!/bin/bash
set -ex

# Install mobsfscan tool
pip3 install --upgrade mobsfscan

# Run analysis and save report
python3 -m mobsfscan --output ${report_file_path} .