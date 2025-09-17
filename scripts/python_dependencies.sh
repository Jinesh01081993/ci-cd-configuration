#!/usr/bin/env bash
set -e  # exit on error

# Ensure dependencies are available
sudo apt-get update
sudo apt-get install -y python3-venv build-essential libjpeg-dev zlib1g-dev libpng-dev libfreetype6-dev

# Create virtual environment with Python 3
python3 -m venv /home/ubuntu/env
source /home/ubuntu/env/bin/activate

# Upgrade pip tools
pip install --upgrade pip setuptools wheel

# Install requirements
pip install -r /home/ubuntu/blogprojectdrf/requirements.txt
