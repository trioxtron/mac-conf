#!/bin/sh

# Ansible environment
[ ! -d ~/dev/venv/ansible ] && python3 -m venv ~/dev/venv/ansible
source ~/dev/venv/ansible/bin/activate
which python3
python3 -m pip install --upgrade pip
python3 -m pip install ansible
deactivate

# Basic environment
[ ! -d ~/dev/venv/basicenv ] && python3 -m venv ~/dev/venv/basicenv
source ~/dev/venv/basicenv/bin/activate
which python3
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
deactivate
