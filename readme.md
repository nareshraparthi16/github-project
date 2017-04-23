#!/bin/bash

#purpose: daily-backup.sh

#owner:root

#version:1.0

############

#clear screen clear

#output echo "this is daily-backup.sh"

#get the backup directory 
#echo "please enter the directory name for backup.sh" read BACKUP_DIR

#show the user choice 
#echo "you have chosen $BACKUP_DIR"
cp -R /home/gituser/github-project/ /home/gituser/daily-backup/
#get today's date

 TDATE=`date +%d-b%-y`
 #echo "todays date is : `date +%d-%b-%y`"
