#!/bin/bash

# Create a user (ftpuser)
useradd $FTP_USER

# Set password to the new user
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd