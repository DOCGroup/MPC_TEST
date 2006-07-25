@echo off

call "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat"
set PATH=C:\Borland\BCC55\Bin;%PATH%

set ACE_ROOT=
set MPC_COMMANDLINE=
set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

run_tests.pl --output pick_me_up_vc71_bmake
