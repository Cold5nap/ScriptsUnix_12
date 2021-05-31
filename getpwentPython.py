#!/usr/bin/python
import re, sys, pwd
pattern = "(?i)" + sys.argv[1]
for line in pwd.getpwall():
    if re.search(pattern, line.pw_gecos):
        print(":".join(["%s" % v for v in line]))
#Андреев