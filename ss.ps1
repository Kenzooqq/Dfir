function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if (!(Test-Admin)) {
    Write-Warning "Por favor, ejecuta este script como administrador."
    Start-Sleep 10
    Exit
}

Write-Host "El script se está ejecutando desde la ubicación correcta."

Clear-Host

Write-Host @"


________  ___________._____________    _________ _________ ___________________   ________  .____     
\______ \ \_   _____/|   \______   \  /   _____//   _____/ \__    ___/\_____  \  \_____  \ |    |    
 |    |  \ |    __)  |   ||       _/  \_____  \ \_____  \    |    |    /   |   \  /   |   \|    |    
 |    `   \|     \   |   ||    |   \  /        \/        \   |    |   /    |    \/    |    \    |___ 
/_______  /\___  /   |___||____|_  / /_______  /_______  /   |____|   \_______  /\_______  /_______ \
        \/     \/                \/          \/        \/                     \/         \/        \/


"@ -ForegroundColor Red


Write-Host "Script made by Kenzooq" -ForegroundColor Cyan
Write-Host
Write-Host

function LoadingAnimation {
    $barLength = 70
    for ($i = 0; $i -le $barLength; $i++) {
        $bar = '[' + 'o' * $i + ' ' * ($barLength - $i) + ']' 
        Write-Host -NoNewline "`r$bar" -ForegroundColor Red
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
}

LoadingAnimation

Clear-host

Write-Host @"

   ___                       __             _       
  / _ \___ ___  ___ ___  ___/ /__ ___  ____(_)__ ___
 / // / -_) _ \/ -_) _ \/ _  / -_) _ \/ __/ / -_|_-<
/____/\__/ .__/\__/_//_/\_,_/\__/_//_/\__/_/\__/___/
        /_/                                         


"@ -ForegroundColor Red

       Write-Host
       Write-Host "JLECmd" -ForegroundColor Cyan
       Write-Host "SrumECmd" -ForegroundColor Cyan
       Write-Host "Timeline Explorer" -ForegroundColor Cyan
       Write-Host "Rla" -ForegroundColor Cyan
       Write-Host

function LoadingAnimation {
    $barLength = 70
    for ($i = 0; $i -le $barLength; $i++) {
        $bar = '[' + 'o' * $i + ' ' * ($barLength - $i) + ']' 
        Write-Host -NoNewline "`r$bar" -ForegroundColor Red
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
}

LoadingAnimation

Write-Host
Write-Host

Clear-Host

function Show-Menu { 
    
    Clear-Host

 }
    $options = @(
        "1. JLECmd"
        "2. Rla",
        "3. SrumECmd"
        "4. Salir"
    )

    $maxWidth = ($options | Measure-Object -Property Length -Maximum).Maximum + 6

   
    Write-Host ("╔" + "═" * ($maxWidth - 2) + "╗") -ForegroundColor Red
    foreach ($option in $options) {
        Write-Host ("║ " + $option.PadRight($maxWidth - 4) + " ║") -ForegroundColor DarkRed
    }
    Write-Host ("╚" + "═" * ($maxWidth - 2) + "╝") -ForegroundColor Red

    
    $choice = Read-Host "Ingrese el número de opción y presione Enter"

    #
    switch ($choice) {
    1 {

    Clear-Host

    Write-Host @"

    
 ▄▄▄██▀▀▀██▓    ▓█████  ▄████▄   ███▄ ▄███▓▓█████▄ 
   ▒██  ▓██▒    ▓█   ▀ ▒██▀ ▀█  ▓██▒▀█▀ ██▒▒██▀ ██▌
    ░██  ▒██░    ▒███   ▒▓█    ▄ ▓██    ▓██░░██   █▌
▓██▄██▓ ▒██░    ▒▓█  ▄ ▒▓▓▄ ▄██▒▒██    ▒██ ░▓█▄   ▌
 ▓███▒  ░██████▒░▒████▒▒ ▓███▀ ░▒██▒   ░██▒░▒████▓ 
 ▒▓▒▒░  ░ ▒░▓  ░░░ ▒░ ░░ ░▒ ▒  ░░ ▒░   ░  ░ ▒▒▓  ▒ 
 ▒ ░▒░  ░ ░ ▒  ░ ░ ░  ░  ░  ▒   ░  ░      ░ ░ ▒  ▒ 
 ░ ░ ░    ░ ░      ░   ░        ░      ░    ░ ░  ░ 
 ░   ░      ░  ░   ░  ░░ ░             ░      ░    
                       ░                    ░      


"@ -ForegroundColor Cyan

function LoadingAnimation {
    $barLength = 70
    for ($i = 0; $i -le $barLength; $i++) {
        $bar = '[' + 'o' * $i + ' ' * ($barLength - $i) + ']' 
        Write-Host -NoNewline "`r$bar" -ForegroundColor Cyan
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
}

LoadingAnimation


      Invoke-Expression "cmd /c jlecmd -d %appdata%\Microsoft\Windows\Recent --csv ." 
    }

    2 {

    Clear-Host

   Write-Host @"

    
 ██▀███   ██▓    ▄▄▄      
▓██ ▒ ██▒▓██▒   ▒████▄    
▓██ ░▄█ ▒▒██░   ▒██  ▀█▄  
▒██▀▀█▄  ▒██░   ░██▄▄▄▄██ 
░██▓ ▒██▒░██████▒▓█   ▓██▒
░ ▒▓ ░▒▓░░ ▒░▓  ░▒▒   ▓▒█░
  ░▒ ░ ▒░░ ░ ▒  ░ ▒   ▒▒ ░
  ░░   ░   ░ ░    ░   ▒   
   ░         ░  ░     ░  ░
                          



"@ -ForegroundColor DarkGreen

 Function LoadingAnimation {
    $barLength = 70
    for ($i = 0; $i -le $barLength; $i++) {
        $bar = '[' + 'o' * $i + ' ' * ($barLength - $i) + ']' 
        Write-Host -NoNewline "`r$bar" -ForegroundColor DarkGreen
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
}

LoadingAnimation

      Invoke-Expression "cmd /c rla.exe -f C:\Windows\System32\config\SYSTEM --out ."

    }

    3{

    Clear-Host

       Write-Host @"

    
  ██████  ██▀███   █    ██  ███▄ ▄███▓▓█████  ▄████▄   ███▄ ▄███▓▓█████▄ 
▒██    ▒ ▓██ ▒ ██▒ ██  ▓██▒▓██▒▀█▀ ██▒▓█   ▀ ▒██▀ ▀█  ▓██▒▀█▀ ██▒▒██▀ ██▌
░ ▓██▄   ▓██ ░▄█ ▒▓██  ▒██░▓██    ▓██░▒███   ▒▓█    ▄ ▓██    ▓██░░██   █▌
  ▒   ██▒▒██▀▀█▄  ▓▓█  ░██░▒██    ▒██ ▒▓█  ▄ ▒▓▓▄ ▄██▒▒██    ▒██ ░▓█▄   ▌
▒██████▒▒░██▓ ▒██▒▒▒█████▓ ▒██▒   ░██▒░▒████▒▒ ▓███▀ ░▒██▒   ░██▒░▒████▓ 
▒ ▒▓▒ ▒ ░░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░░ ▒░ ░░ ░▒ ▒  ░░ ▒░   ░  ░ ▒▒▓  ▒ 
░ ░▒  ░ ░  ░▒ ░ ▒░░░▒░ ░ ░ ░  ░      ░ ░ ░  ░  ░  ▒   ░  ░      ░ ░ ▒  ▒ 
░  ░  ░    ░░   ░  ░░░ ░ ░ ░      ░      ░   ░        ░      ░    ░ ░  ░ 
      ░     ░        ░            ░      ░  ░░ ░             ░      ░    
                                             ░                    ░      


"@ -ForegroundColor Blue

 Function LoadingAnimation {
    $barLength = 70
    for ($i = 0; $i -le $barLength; $i++) {
        $bar = '[' + 'o' * $i + ' ' * ($barLength - $i) + ']' 
        Write-Host -NoNewline "`r$bar" -ForegroundColor DarkBlue
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
}

LoadingAnimation

    
      Invoke-Expression "cmd /c SrumECmd.exe -f C:\Windows\System32\sru\SRUDB.dat --csv ."

    }

 }