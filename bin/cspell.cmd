@ECHO off
SETLOCAL
SET "dp0=%~dp0"
SET "BINPATH=%dp0%..\node_modules\.bin"
SET "NODE_PATH=%dp0%..\node_modules"
CALL "%BINPATH%\cspell.CMD" %*
ENDLOCAL
