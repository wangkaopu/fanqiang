@Echo Off
Title 从云端更新 v2ray 最新可用 IP
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://cdn.jsdelivr.net/gh/Alvin9999/PAC@latest/guiNConfig.json

if exist guiNConfig.json goto startcopy
echo ip更新失败，请试试另外一个，如果都不行，请反馈kebi2014@gmail.com
pause
exit
:startcopy

del "..\guiNConfig.json_backup"
ren "..\guiNConfig.json"  guiNConfig.json_backup
copy /y "%~dp0guiNConfig.json" ..\guiNConfig.json
del "%~dp0guiNConfig.json"
ECHO update ok. 
PAUSE
exit