#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date) # keep more focus here
echo "Script executed at: $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))
echo "SUM of $NUMBER1 and $NUMBER2 is: $SUM"


echo "Addition completed successfully."
echo "Script execution finished at: $(date)"