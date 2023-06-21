#!/usr/bin/env bash
#This script creates a command to select just the emails of the student and saves the output in “student-emails.txt” file.

grep -oE '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' students-list_0333.txt > student-emails.txt
echo "Emails extracted and saved in student-emails.txt."
