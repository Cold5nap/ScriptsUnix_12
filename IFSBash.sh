#!/bin/bash
pattern=$1
IFS=":"
while read account password uid gid name directory shell
	do
	if [[ $name == $pattern ]]; then
		echo "$account:$password:$uid:$gid:$name:$directory:$shell"
		fi
		done < /etc/passwd
#Андреев
