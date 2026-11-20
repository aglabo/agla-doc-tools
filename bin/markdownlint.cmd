@ECHO off
REM src: bin/markdownlint.cmd
REM @(#) : markdownlint wrapper (cmd)
REM
REM Copyright (c) 2026- atsushifx <https://github.com/atsushifx>
REM
REM This software is released under the MIT License.
REM https://opensource.org/licenses/MIT
SETLOCAL
SET "TOOL=markdownlint-cli2"
CALL "%~dp0libs\run-node-bin.cmd" %*
ENDLOCAL & EXIT /B %ERRORLEVEL%
