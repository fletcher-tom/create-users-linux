#!/bin/bash

USERNAME=$1
PASSWORD=$2

# Add user account with name passed in as first parameter
sudo useradd $USERNAME

# Set a password (which is passed in as second parameter) against the user created, and ONLY send successful message if chpasswd exits successfully
# && = only run command on right if the command on the left has run successfully
echo "$USERNAME:$PASSWORD" | sudo chpasswd && echo "Account for $USERNAME has been created"

