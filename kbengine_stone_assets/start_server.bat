@echo off
set curpath=%~dp0

cd ..
set KBE_ROOT
set KBE_RES_PATH=%KBE_ROOT%/kbe/res/;%curpath%/;%curpath%/scripts/;%curpath%/res/
set KBE_BIN_PATH=%KBE_ROOT%/kbe/bin/server/

if defined uid (echo UID = %uid%) else set uid=%random%%%32760+1

cd %curpath%
call "kill_server.bat"

echo KBE_ROOT = %KBE_ROOT%
echo KBE_RES_PATH = %KBE_RES_PATH%
echo KBE_BIN_PATH = %KBE_BIN_PATH%

start %KBE_BIN_PATH%/machine.exe --cid=10002 --gus=1
start %KBE_BIN_PATH%/logger.exe --cid=20002 --gus=2
start %KBE_BIN_PATH%/interfaces.exe --cid=30002 --gus=3
start %KBE_BIN_PATH%/dbmgr.exe --cid=40002 --gus=4
start %KBE_BIN_PATH%/baseappmgr.exe --cid=50002 --gus=5
start %KBE_BIN_PATH%/cellappmgr.exe --cid=60002 --gus=6
start %KBE_BIN_PATH%/baseapp.exe --cid=70012 --gus=7
@rem start %KBE_BIN_PATH%/baseapp.exe --cid=70022 --gus=8 --hide=1
start %KBE_BIN_PATH%/cellapp.exe --cid=80012 --gus=9
@rem start %KBE_BIN_PATH%/cellapp.exe --cid=80022  --gus=10 --hide=1
start %KBE_BIN_PATH%/loginapp.exe --cid=90002 --gus=11