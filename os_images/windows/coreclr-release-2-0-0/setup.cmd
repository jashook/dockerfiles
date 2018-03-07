@if not defined _echo @echo off
setlocal EnableDelayedExpansion EnableExtensions

call C:\BuildTools\Common7\Tools\VsDevCmd.bat

call C:\startup_tools\run_command_cmd64.cmd C:\startup_tools\register_dia.cmd

call C:\startup_tools\check_dia_register.cmd