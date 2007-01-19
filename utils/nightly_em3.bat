@echo off

set BASE_DIR=Z:
set WCEROOT=Z:\Microsoft eMbedded C++ 4.0
set SDKROOT=Z:\Windows CE Tools

set MPC_ROOT=u:\current\MPC
cd /d %MPC_ROOT%\test

if exist "%WCEROOT%" goto start
echo "%BASE_DIR%\ is not mapped" > pick_me_up_em3
goto done

:start
call "%WCEROOT%\EVC\wce420\bin\WCEemulator.BAT"

set ACE_ROOT=
set MPC_COMMANDLINE=

run_tests.pl --type em3 --output pick_me_up_em3

:done
