#!/bin/sh

testdir=/home/elliottc/current/MPC/test

if [ -d $testdir ]; then
  cd $testdir

  for i in pick_me_up*; do
    title=`echo $i | sed 's/pick_me_up_//'`
    if [ -r $i ]; then
      cat $i | mail -s "MPC Tests: $title" elliott_c@ociweb.com
      rm -f $i
    fi
  done
fi
