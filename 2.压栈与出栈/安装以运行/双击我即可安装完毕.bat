%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"



if "%PROCESSOR_ARCHITECTURE%"=="x86" goto x86
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto x64
exit

:x64
copy  %~dp0\Richtx32.ocx C:\Windows\SysWow64
cd c:\windows\syswow64
regsvr32 richtx32.ocx
echo OutReportע��64λ��ɹ�
exit
 
:x86
copy  %~dp0\Richtx32.ocx C:\Windows\system32
regsvr32 richtx32.ocx
echo OutReportע��32λ��ɹ�
exit
