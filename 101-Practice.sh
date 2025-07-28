#!/bin/bash

# Print holiday or not
# 1. Get the current day of the week (e.g., Monday, Tuesday, ...)
# 2. If today is not Sunday, I have to go school
# 3. Otherwise today is holiday


day=$(date +%A)

echo "Today is $day"

# Check if today is Sunday
if [ "$day" eq "Sunday" ]
then
    echo "It's a holiday!"
else
    echo "It's a working day."
fi
