#!/bin/sh
#
# 1) Change to the expected directory
# 2) svn add the top level test directory
# 3) Run this script giving it the full path to execute it

for i in *; do
  if [ -d $i ]; then
    if [ "$i" != ".svn" ]; then
      echo "Adding directory: $i"
      svn add $i
      (cd $i; $0)
    fi
  else
    echo "Adding file: $i"
    svn add $i
    svn propset svn:mime-type application/octet-stream $i
    svn propset svn:keywords "Author Date Id Revision" $i
  fi
done
