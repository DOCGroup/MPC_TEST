@echo off
set BASE_DIR=Z:
set MSBaseDir=Z:\Microsoft Visual Studio

set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

if exist "%MSBaseDir%" goto start
echo "%BASE_DIR%\ is not mapped" > pick_me_up_vc6
goto done

:start
rem call "C:\Program Files\Microsoft Visual Studio\VC98\Bin\VCVARS32.BAT"
set MSDevDir=%MSBaseDir%\Common\MSDev98
set MSVCDir=%MSBaseDir%\VC98
set PATH=%MSDevDir%\BIN;%MSVCDir%\BIN;%PATH%
set INCLUDE=%MSVCDir%\ATL\INCLUDE;%MSVCDir%\INCLUDE;%MSVCDir%\MFC\INCLUDE;%INCLUDE%
set LIB=%MSVCDir%\LIB;%MSVCDir%\MFC\LIB;%LIB%

set PERL5_INCLUDE=C:\Perl\lib\CORE
set PERL5_LIB=perl58

set ACE_ROOT=
set MPC_COMMANDLINE=

run_tests.pl --type vc6 --output pick_me_up_vc6

:done
