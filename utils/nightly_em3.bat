@echo off

call "C:\Program Files\Microsoft eMbedded C++ 4.0\EVC\wce420\bin\WCEemulator.BAT"

set ACE_ROOT=
set MPC_COMMANDLINE=
set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

run_tests.pl --type em3 --output pick_me_up_em3
