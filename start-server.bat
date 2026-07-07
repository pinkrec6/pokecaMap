@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  PokecaMap server
echo ============================================
echo.
echo Your PC's IPv4 address(es):
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do echo    http://%%a:8787/  (remove spaces)
echo.
echo On your smartphone (same Wi-Fi), open:
echo    http://^<PC-IP-address^>:8787/
echo.
echo Press Ctrl+C to stop.
echo ============================================
python -m http.server 8787
pause
