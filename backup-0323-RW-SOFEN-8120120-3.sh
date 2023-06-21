#!/usr/bin/env bash
#This script creates a shell script to back up 0323-RW-SOFEN-8120120-3-q1 directory to a remote server computer.

#Define the remote server details
Host="a0dfc11ba139.a982e858.alu-cod.online"
Username="a0dfc11ba139"
Password="899c79fc532cd0591af1"
Backup_Location="/home/sftp-student/03033/summative"

#Compress the directory created in Question 2
tar -czvf 0323-RW-SOFEN-8120120-3-q1.tar.gz 0323-RW-SOFEN-8120120-3-q1

#Transfer the compressed file to the remote server
sshpass -p "$Password" scp 0323-RW-SOFEN-8120120-3-q1.tar.gz "$Username"@"$Host":"$Backup_Location"

#Remove the compressed file
rm 0323-RW-SOFEN-8120120-3-q1.tar.gz
