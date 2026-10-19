@ECHO off
SETLOCAL
SET "TOOL=cspell"
CALL "%~dp0libs\run-node-bin.cmd" %*
ENDLOCAL & EXIT /B %ERRORLEVEL%
