#/bin/bash
pattern=$1
IFS=":"
while read account password uid gid name directory shell
	do
	if [[ $uid -gt 500 && $(echo $name | egrep -i -c "$pattern") -gt o ]]; then
		echo "$account:$password:$uid:$gid:$name:$directory:$shell"
		fi
		done < /etc/passwd
#Андреев
