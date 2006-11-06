#!/bin/sh

if [ -z "$TESTDIR" ]; then
  TESTDIR=$HOME/current/MPC/test
fi
if [ -z "$RECIPIENTS" ]; then
  RECIPIENTS=elliott_c@ociweb.com
fi

if [ -d $TESTDIR ]; then
  cd $TESTDIR

  for i in pick_me_up*; do
    title=`echo $i | sed 's/pick_me_up_//'`
    if [ -r $i ]; then
      cat $i | tr -d '\015' | mail -s "MPC Tests: $title" $RECIPIENTS
      rm -f $i
    fi
  done
fi
