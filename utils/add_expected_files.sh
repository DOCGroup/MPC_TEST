#!/bin/sh

for i in *; do
  echo "Setting properties for file: $i"
  svn propset svn:mime-type application/octet-stream $i
  svn propset svn:keywords "Author Date Id Revision" $i
done
