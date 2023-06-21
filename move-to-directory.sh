#!/usr/bin/env bash
#This script creates a shell script to automatically move all 4 files inside

# Create the directory with the desired name
directory_name="0323-RW-SOFEN-8120120-3-q1"
mkdir "$directory_name"

# Move the files created in Question 1 to the directory
mv main.sh "$directory_name"
mv students-list_0333.txt "$directory_name"
mv select-emails.sh "$directory_name"
mv student-emails.txt "$directory_name"

# Create a README file inside the directory
echo "This is the README file for the 0323-RW-SOFEN-8120120-3-q1 directory." > "$directory_name/README.md"
