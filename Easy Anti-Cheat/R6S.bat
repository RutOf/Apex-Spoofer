rmdir /s /q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\cache"
rmdir /s /q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\logs"
rmdir /s /q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\savegames"
rmdir /s /q "%systemdrive%\Users\%USERNAME%\AppData\Local\Ubisoft Game Launcher\spool"

del /f /s /q "%systemdrive%\Users\%USERNAME%\AppData\Local\Temp\*"
del /f /s /q "%systemdrive%\Windows\Prefetch\*"
del /f /s /q "%systemdrive%\Windows\Temp\*"

del /q "C:\ProgramData\Microsoft\Windows\WER\Temp\*"
for /d %%x in (C:\ProgramData\Microsoft\Windows\WER\Temp\*) do @rd /s /q "%%x"

del /q "C:\Users\%username%\AppData\Local\Temp\*"
for /d %%x in (C:\Users\%username%\AppData\Local\Temp\*) do @rd /s /q "%%x"
