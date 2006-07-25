@echo off

call "C:\Program Files\Microsoft Visual Studio\VC98\Bin\VCVARS32.BAT"

set ACE_ROOT=
set MPC_COMMANDLINE=
set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

run_tests.pl --type nmake --type vc6 --output pick_me_up_vc6
