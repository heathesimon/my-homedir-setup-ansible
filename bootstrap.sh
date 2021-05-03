#!/bin/bash

echo "Please install Xcode before continuing. Press any key when ready to proceed"
read  -n 1

# Install homebrew
echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install python3
echo "Installing python3"
brew install python3

# Install ansible
brew install ansible

#Create .ansible.cfg in home directory
touch ~/.ansible.cfg

# Run ansible playbook
ansible-playbook homedir.yml --connection=local



