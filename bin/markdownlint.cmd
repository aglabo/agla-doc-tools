@ECHO off
SETLOCAL
SET "TOOL=markdownlint-cli2"
CALL "%~dp0libs\run-node-bin.cmd" %*
ENDLOCAL & EXIT /B %ERRORLEVEL%
