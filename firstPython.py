#!/usr/bin/python
import re, sys
pattern = "(?i)" + sys.argv[1]
file = open("/etc/passwd")
for line in file:
    if re.search(pattern, line):
        print(line)
#Андреев
