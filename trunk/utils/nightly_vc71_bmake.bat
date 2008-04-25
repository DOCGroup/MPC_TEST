@echo off

call "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat"
set PATH=C:\Borland\BCC55\Bin;%PATH%
set PERL5_INCLUDE=C:\Perl\lib\CORE
set PERL5_LIB=perl58
set QTDIR=C:\Qt-3.3

set ACE_ROOT=
set MPC_COMMANDLINE=
set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

run_tests.pl --quiet --output pick_me_up_vc71_bmake
