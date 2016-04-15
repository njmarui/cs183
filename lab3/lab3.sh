#!/bin/bash

printf "\nfinding all files in /bin, /sbin, /usr/bin, and /usr/sbin that are setuid and owned by root\n"
read -p "Hit any key to continue."
printf "\nfind /bin /sbin /usr/bin /usr/sbin -user root -perm -4000 \n\n"
find /bin /sbin /usr/bin /usr/sbin -user root -perm -4000

echo "this is a security risk because non-root users can execute these programs as root, and thereby gain root access (especially if a shell is setuid)"

printf "\nfinding all files in /var that have changed in the last 20 minutes.\n"
read -p "Hit any key to continue."
printf "find /var -cmin -20 \n\n"
find /var -cmin -20

printf "\nfinding all files in /var that are regular files of zero length.\n"
read -p "Hit any key to continue."
printf "\nfind /var -type f -size 0\n\n"
find /var -type f -size 0

printf "\nfinding all files in /dev that are neither regular files nor directories\n"
read -p "Hit any key to continue."
printf "\nfind /dev ! -type f ! -type d\n\n"
find /dev ! -type f ! -type d

printf "\nfinding all directories in /home that are not owned by root. then, change permissions to 711.\n"
read -p "Hit any key to continue."
printf "\nfind /home ! -user root -type d -exec chmod 711 {} \\; \n\n"
find /home ! -user root -type d -exec chmod 711 {} \;

printf "\nfinding all regular files in /home that are not owned by root, then change their permissions to 755\n"
read -p "Hit any key to continue."
printf "\nfind /home ! -user root -type f exec chmod 755 {} \\; \n\n"
find /home ! -user root -type f -exec chmod 755 {} \;

printf "\nfinding all types of files in /etc that have changed in the last 5 days\n"
read -p "Hit any key to continue."
printf "\nfind /etc -ctime 5\n\n"
find /etc -ctime -5
