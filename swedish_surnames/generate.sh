#!/bin/sh

# 1. generate names
# 2. remove debug logging from tflearn
# 3. remove results already existing in data/names.txt
# 4. remove all names with only one letter
# 5. sort and remove duplicates
python lstm_swedish_surnames.py | tail -n +6 | grep -i -v -x -f data/names.txt | sed -r '/^.{,1}$/d' | sort -u > generated.txt
