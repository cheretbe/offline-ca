@ECHO OFF

IF NOT "%AO_CA_PASSWORD%"=="" (
  ECHO Using AO_CA_PASSWORD env variable as a CA password
  GOTO:EOF
)

FOR /F "DELIMS=" %%l IN ('powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0%~n0.ps1"') DO (
  SET "AO_CA_PASSWORD=%%l"
)
