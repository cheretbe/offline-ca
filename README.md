# offline-ca


```powershell
[CultureInfo]::InstalledUICulture

# https://gist.github.com/lmmarsano/30bdbf6a6e91bf4d0488f65edc531af1
		New-NetFirewallRule -Name 'WINRM-HTTPS-In-TCP-NoScope' `
		                    -DisplayName 'Windows Remote Management (HTTPS-In)' `
		                    -Group '@FirewallAPI.dll,-30267' `
		                    -Description 'Inbound rule for Windows Remote Management via WS-Management. [TCP 5986]' `
		                    -Profile Any `
		                    -LocalPort 5986 `
		                    -Protocol TCP
```
