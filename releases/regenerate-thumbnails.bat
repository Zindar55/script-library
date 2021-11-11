@echo off
REM Austin Young 
REM 2021/11/11
REM Regenerates windows thumbnails; fixes missing thumbnails; corupted thumbnail databases. 
REM NOTE: Kills explorer as part of the process and relunches after deleting all thumbcache_*.db.
taskkill /f /im explorer.exe
del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
start explorer.exe