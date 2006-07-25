#!/bin/sh

if [ -z "$ACE_ROOT" ]; then
  ACE_ROOT=/tao_builds/chad/ocitao/ACE_wrappers/build/linux; export ACE_ROOT
fi

unset MPC_COMMANDLINE
MPC_ROOT=/home/elliottc/current/MPC; export MPC_ROOT

cd $MPC_ROOT
svn update | grep -v '^[\?GA]' | grep -v 'Update to' | grep -v 'At revision'

QTDIR=/usr/lib64/qt-3.3; export QTDIR

cd test
./run_tests.pl --quiet 2>&1 | mail -s 'MPC Tests: Linux' elliott_c@ociweb.com
