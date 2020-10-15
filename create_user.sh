#!/bin/bash

USERNAME="$1"
PASSWORD="$2"

# Add user account with name passed in as first parameter
sudo useradd $USERNAME

# 2.i 
# Check if password was passed in 
# -z = check if string is null, i.e. check if $PASSWORD has zero length
if [ -z $PASSWORD];
# If no password passed in, then randomly generate one and assign it to the PASSWORD variable.
then 
    PASSWORD=$(openssl rand -base64 32)
fi

# Set a password against the user created, and ONLY send successful message if chpasswd exits successfully
# && = only run command on right if the command on the left has run successfully
 echo "$USERNAME:$PASSWORD" | sudo chpasswd && echo "Account for $USERNAME has been created"

# 2.ii 
# Write username and password to a file
touch credentials.txt 
echo "Login credentials" >> credentials.txt
echo "Username: $USERNAME" >> credentials.txt
echo "Password: $PASSWORD" >> credentials.txt

# 2.iii
# The credentials.txt file is sent as an email attachment to the user with a success message
mail -A "credentials.txt" -s "Here are your login credentials" "$USERNAME@domain.com" < /dev/null && \
    echo "email with the credentials file has been successfully sent." && \
    # 2.iv
    # Delete credentials.txt file
    echo "Deleting credentials file" && \
    rm -rf credentials.txt

# 2.iv
# Delete credentials.txt file
rm -rf credentials.txt