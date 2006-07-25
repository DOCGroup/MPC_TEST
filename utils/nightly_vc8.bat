@echo off

call "C:\Program Files\Microsoft Visual Studio 8\Common7\Tools\vsvars32.bat"

set ACE_ROOT=
set MPC_COMMANDLINE=
set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

run_tests.pl --type nmake --type vc8 --output pick_me_up_vc8
