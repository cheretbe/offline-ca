@ECHO OFF

IF NOT EXIST "%~dp0ca-files\root_ca.crt" (
  ECHO ERROR: Root CA files are missing
  ECHO They could be created with the following command:
  ECHO "%~dp0lib\win\step\bin\step.exe" certificate create --profile root-ca "Example Root CA" "%~dp0ca-files/root_ca.crt" "%~dp0ca-files/root_ca.key"
  EXIT /B 0
)

CALL "%~dp0lib\get_ca_password.bat"