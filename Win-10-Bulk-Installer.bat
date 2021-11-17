echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo.-------------------------------------------------------------
   echo                  Error: I need admin permissions.
   echo                    So run me as an admin 4head
   echo. -------------------------------------------------------------
   pause
   EXIT /B 1

)

powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

echo Ok, ready to go!
pause

@rem ----[ Program List ]----
choco install 7zip.portable
choco install audacity
choco install audacity-ffmpeg
choco install audacity-lame
choco install bleachbit.portable
choco install calibre
choco install discord-canary
choco install dropbox
choco install epicgameslauncher
choco install lghub
choco install goggalaxy
choco install jdownloader
choco install keypirinha
choco install krita
choco install mpv.portable
choco install qbittorrent
choco install obs-studio.portable
choco install obsidian
choco install radmin-vpn
choco install rainmeter
choco install resilio-sync-home
choco install sharex
choco install spotify
choco install spicetify-cli
choco install steam-client
choco install translucenttb
choco install vivaldi.portable
choco install vortex
choco install vscode
choco install vscode-prettier
@rem ----[ Program List ]----
pause

echo.
echo All programs installed. Welcome Back to Windows o/
pause
