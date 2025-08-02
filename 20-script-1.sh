#!/bin/bash

MSG="SCRIPT1"
GREET="Hi from SCRIPT-1"
source ./21-script-2.sh # This will execute 21-script-2.sh and print its output

echo "Hello from: $MSG"
echo "A value: $A"

#sh 21-script-2.sh