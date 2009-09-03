#!/bin/sh
# ******************************************************************
#      Author: Chad Elliott
#        Date: 7/25/2006
#         $Id$
# ******************************************************************

# ******************************************************************
# Data Section
# ******************************************************************

if [ -z "$TESTDIR" ]; then
  TESTDIR=$HOME/current/MPC/test
fi
if [ -z "$RECIPIENTS" ]; then
  RECIPIENTS=mpctest@ociweb.com
fi

# ******************************************************************
# Main Section
# ******************************************************************

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
