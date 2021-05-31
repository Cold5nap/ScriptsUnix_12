#!/usr/bin/python
import re, sys
pattern = "(?i)" + sys.argv[1]
file = open("/etc/passwd")
for line in file:
    fields = line.split(":")
    if re.search(pattern, fields[4]):
        print(line)
#Андреев
