#!/bin/bash
#
# 1) Change to the expected directory
# 2) Run this script with the full path to execute it

# * should expand files starting with .
shopt -s dotglob

for i in *; do
  if [ -d $i ]; then
    if [ "$i" != ".svn" ]; then
      if [ ! -e "$i/.svn" ]; then
        echo "Adding directory: $i"
        svn --config-option config:miscellany:global-ignores= add $i
        (cd $i; $0 propset)
      else
        if [ "$1" = "propset" ]; then
          (cd $i; $0 propset)
        fi
      fi
    fi
  else
    echo "Setting properties for file: $i"
    svn propset svn:mime-type application/octet-stream $i
    svn propset svn:keywords "Author Date Id Revision" $i
  fi
done
