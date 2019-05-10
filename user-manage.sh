#!/bin/bash
# A menu driven Shell script which has following options
# Contents of /etc/passwd
# List of users currently logged
# Prsent handling directory
# Exit
# As per option do the job
# -----------------------------------------------
# Copyright (c) 2005 nixCraft project <http://cyberciti.biz/fb/>
# This script is licensed under GNU GPL version 2.0 or above
# -------------------------------------------------------------------------
# This script is part of nixCraft shell script collection (NSSC)
# Visit http://bash.cyberciti.biz/ for more information.
# -------------------------------------------------------------------------

while :
do
 clear
 echo "   M A I N - M E N U"
 echo "1. ADD USER"
 echo "2. LIST USER"
 echo "3. DELETE USER"
 echo "4. Exit"
 echo -n "Please enter option [1 - 4]"
 read opt
 case $opt in
  1) echo "************ ADD USER *************";
     ansible-playbook adduser.yml;;
  2) echo "*********** LIST USER *************";
     ansible-playbook listuser.yml;;
  3) echo "*********** DELETE USER ***********";   
     ansible-playbook deluser.yml;;
  4) echo "Bye $USER";
     exit 1;;
  *) echo "$opt is an invaild option. Please select option between 1-4 only";
     echo "Press [enter] key to continue. . .";
     read enterKey;;
esac
done
