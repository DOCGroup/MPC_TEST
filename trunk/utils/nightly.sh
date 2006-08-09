#!/bin/sh

if [ -z "$RECIPIENTS" ]; then
  RECIPIENTS=elliott_c@ociweb.com
fi

if [ -z "$ACE_ROOT" ]; then
  ACE_ROOT=/tao_builds/chad/ocitao/ACE_wrappers/build/linux; export ACE_ROOT
fi

unset MPC_COMMANDLINE
if [ -z "$MPC_ROOT" ]; then
  MPC_ROOT=/home/elliottc/current/MPC; export MPC_ROOT
fi

cd $MPC_ROOT
svn update | grep -v '^[\?GA]' | grep -v 'Update to' | grep -v 'At revision'

if [ -z "$QTDIR" ]; then
  QTDIR=/usr/lib64/qt-3.3; export QTDIR
fi

cd test
./run_tests.pl --quiet 2>&1 | mail -s 'MPC Tests: Linux' $RECIPIENTS
