@ECHO off
SETLOCAL
SET "TOOL=textlint"
CALL "%~dp0libs\run-node-bin.cmd" %*
ENDLOCAL & EXIT /B %ERRORLEVEL%
