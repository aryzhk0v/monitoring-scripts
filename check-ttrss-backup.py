#!/usr/bin/env python3

filepath="/var/log/ttrss-backup.status"
f = open(filepath, 'r')
content = f.read()
f.close()
if content != "PG DUMP - OK : OPML - OK : ENV - OK : TAR : OK\n" :
    print(content)
    exit(2)
print(content)