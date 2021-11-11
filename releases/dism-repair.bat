@echo off
REM Austin Young 
REM 2021/11/11
REM Runs full DISM repair and SFC /scannow.
Echo "Scanning system health..."
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /CheckHealth
Echo "Preforming repairs..."
DISM /Online /Cleanup-Image /RestoreHealth || ECHO "DISM ran into issues; skipping to final system scan and repair."
ECHO "Preforming final system scan and repair"
SFC /SCANNOW
PAUSE