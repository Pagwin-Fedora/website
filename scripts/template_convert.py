#!/bin/env python3

import os
import re

var_name = "COMMENTS_BACKEND"
file_name = "nginx.conf"
back = os.environ.get(var_name)
buf = str() 
with open(file_name+".template") as file:
    buf = file.read()

if back == None:
    buf = re.sub("###{---(.|\n)*###---}", "", buf)
else:
    # ${{\s*$var_name\s*}}
    buf = re.sub(rf"\${{{{\s*{var_name}\s*}}}}",var_name,buf)

with open(file_name, "w+") as file:
    file.write(buf)
