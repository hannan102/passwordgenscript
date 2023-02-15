#!/bin/bash

# Define the length of the password or passphrase
LENGTH=16

# Generate a random password or passphrase
PASSWORD=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c $LENGTH)
# Use this line instead for a passphrase that includes spaces and punctuation
#PASSWORD=$(pwgen -1 -s $LENGTH)

# Create a file to store the password or passphrase
PASSWORD_FILE="password.txt"
touch $PASSWORD_FILE

# Write the password or passphrase to the file
echo $PASSWORD > $PASSWORD_FILE

# Set the file permissions to 600 (read and write access for owner only)
chmod 600 $PASSWORD_FILE

