#!/bin/sh

# ******************************************************************
#      Author: Chad Elliott
#        Date: 7/25/2006
#         $Id$
# ******************************************************************

# ******************************************************************
# Data Section
# ******************************************************************

if [ -z "$PERL5_INCLUDE" ]; then
  PERL5_INCLUDE=/usr/lib/perl/5.8.8/CORE; export PERL5_INCLUDE
fi

if [ -z "$ACE_ROOT" ]; then
  ACE_ROOT=/tao_builds/chad/ocitao/ACE_wrappers/build/linux; export ACE_ROOT
fi

if [ -z "$QTDIR" ]; then
  QTDIR=/usr; export QTDIR
fi

# ******************************************************************
# Main Section
# ******************************************************************

cd $MPC_ROOT
svn update | grep -v '^[\?GA]' | grep -v 'Update to' | grep -v 'At revision'

cd test
./run_tests.pl --quiet --output pick_me_up_Linux
