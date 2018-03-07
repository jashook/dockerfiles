@if not defined _echo @echo off
setlocal EnableDelayedExpansion EnableExtensions

reg query HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{3BFCEA48-620F-4B6B-81F7-B9AF75454C7D}\InprocServer32 > NUL: 2>&1
if NOT '%ERRORLEVEL%' == '0' (
    echo.
    echo.**********************************************************************************
    echo.Error: We have detected that the msdia120.dll is not registered.   
    echo.This is necessary for the build to complete without a Class_Not_Registered error.
    echo.
    echo.You can fix this by 
    echo.  1. Launching the "Developer Command Prompt for VS2017" with Administrative privileges
    echo.  2. Running  regsvr32.exe "%%VSINSTALLDIR%%\Common7\IDE\msdia120.dll"  
    echo.
    echo.This will only need to be done once for the lifetime of the machine.
    echo.For more details see: https://github.com/dotnet/coreclr/issues/11305
    exit /b 1
)