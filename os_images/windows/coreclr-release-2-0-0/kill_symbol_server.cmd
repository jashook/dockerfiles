@if not defined _echo @echo off
setlocal EnableDelayedExpansion EnableExtensions

@for /F "tokens=2 delims= " %%I in ('tasklist^|findstr /I "mspdbsrv.exe"') do taskkill /F /PID %%I>NUL && echo Process killed.