# windows_StartClean.ps1

###############################
# Run as PowerShell Admin
###############################
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 

    { 
        Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; 
        exit }


###############################
# Windows 10 Built-In App Removal
# Be gone, heathens!
###############################


# 3D Builder and View 3D
Get-AppxPackage -AllUsers *3d* | Remove-AppxPackage

# Alarms and Clock Apps
Get-AppxPackage -AllUsers *alarms* | Remove-AppxPackage

# App Connector (Azure, MSN-based applications; live tiles.)
Get-AppxPackage -AllUsers *appconnector* | Remove-AppxPackage

# App Installer - (Web-based applications)
Get-AppxPackage -AllUsers *appinstaller* | Remove-AppxPackage

# Bing Money, News, Sports, Weather
Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage

# Candy Crush
Get-AppxPackage -AllUsers *CandyCrush* | Remove-AppxPackage

# Calculator App
#Get-AppxPackage -AllUsers *calculator* | Remove-AppxPackage

# Calendar and Mail App
Get-AppxPackage -AllUsers *communicationsapps* | Remove-AppxPackage

# Feedback Hub 
Get-AppxPackage -AllUsers *feedback* | Remove-AppxPackage

# Get Started or Tips
Get-AppxPackage -AllUsers *GetStarted* | Remove-AppxPackage

# Groove Music and Movies & TV
Get-AppxPackage -AllUsers *Zune* | Remove-AppxPackage

# Maps App
Get-AppxPackage -AllUsers *maps* | Remove-AppxPackage

# Messaging and Skype Video apps
Get-AppxPackage -AllUsers *Messaging* | Remove-AppxPackage

# Paid Wi-Fi & Cellular
Get-AppxPackage -AllUsers *oneconnect* | Remove-AppxPackage

# Paint 3D App (old paint still usable)
Get-AppxPackage -AllUsers *paint* | Remove-AppxPackage

# People / Contacts App
Get-AppxPackage -AllUsers *people* | Remove-AppxPackage

# Phone and Phone Companion apps
Get-AppxPackage -AllUsers *phone* | Remove-AppxPackage

# Photos App
Get-AppxPackage -Allusers *photos* | Remove-AppxPackage

# Preinstalled Get Office
Get-AppxPackage -AllUsers *officehub* | Remove-AppxPackage

# OneNote App (does not affect desktop version)
Get-AppxPackage -AllUsers *onenote* | Remove-AppxPackage

# Skype App (not desktop version)
Get-AppxPackage -AllUsers *skypeapp* | Remove-AppxPackage

# Voice Recorder
Get-AppxPackage -AllUsers *soundrecorder* | Remove-AppxPackage

# Solitaire Collection
Get-AppxPackage -AllUsers *solitaire* | Remove-AppxPackage

# Sticky Notes App
Get-AppxPackage -AllUsers *sticky* | Remove-AppxPackage

# Sway
Get-AppxPackage -AllUsers *sway* | Remove-AppxPackage

# Microsoft Wallet
Get-AppxPackage -AllUsers *wallet* | Remove-AppxPackage

# Microsoft Wi-Fi (does not affect network abilites)
Get-AppxPackage -AllUsers *connectivitystore* | Remove-AppxPackage

# Xbox 
Get-AppxPackage -AllUsers *xbox* | Remove-AppxPackage