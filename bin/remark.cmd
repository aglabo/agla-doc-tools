@ECHO off
SETLOCAL
SET "TOOL=remark"
CALL "%~dp0libs\run-node-bin.cmd" %*
ENDLOCAL & EXIT /B %ERRORLEVEL%
