@ECHO off
REM run-node-bin.cmd - shared runner for bin\ tool wrappers
REM Usage: SET "TOOL=<tool>" then CALL run-node-bin.cmd [args...]
REM (%* is not affected by SHIFT, so the tool name is passed via TOOL)
SET "dp0=%~dp0"
SET "NODE_PATH=%dp0%..\..\node_modules"
SET "BINPATH=%NODE_PATH%\.bin"
CALL "%BINPATH%\%TOOL%.CMD" %*
