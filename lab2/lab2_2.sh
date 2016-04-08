#!/bin/bash

while IFS=":" read u x uid gid uif h p; do

	#	echo -n $u $uid

	groups $u | sed s/:/$uid/g

	# | awk -F: '{print 2}
	#	grep $u /etc/group | awk -F: '{print $4}'

done < /etc/passwd 

#for i in $(cat /etc/passwd); do
#	echo $i # | cut -d: -f1,3 --output-delimiter=' '
#	j=$(echo $i | cut -d ' ' -f1)
#	grep $j /etc/group | cut -d: -f1 | tr "\n" " "
#	echo
#done

#for i in $(cat /etc/passwd | awk -F: 'BEGIN{ print $1 }'); do
#	echo $i
#done
