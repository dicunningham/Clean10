# windows_StartClean.ps1

###############################
# Run as Admin
###############################
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 

    { 
        Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; 
        exit }


###############################
# Windows 10 Built-In App Removal
# Be gone, heathens!
###############################

Get-AppxPackage -AllUsers *3d* | Remove-AppxPackage
Get-AppxPackage -AllUsers *alarms* | Remove-AppxPackage
Get-AppxPackage -AllUsers *appconnector* | Remove-AppxPackage
Get-AppxPackage -AllUsers *appinstaller* | Remove-AppxPackage
Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage
Get-AppxPackage -AllUsers *CandyCrush* | Remove-AppxPackage
Get-AppxPackage -AllUsers *communicationsapps* | Remove-AppxPackage
Get-AppxPackage -AllUsers *connectivitystore* | Remove-AppxPackage
Get-AppxPackage -AllUsers *feedback* | Remove-AppxPackage
Get-AppxPackage -AllUsers *GetStarted* | Remove-AppxPackage
Get-AppxPackage -AllUsers *maps* | Remove-AppxPackage
Get-AppxPackage -AllUsers *Messaging* | Remove-AppxPackage
Get-AppxPackage -AllUsers *paint* | Remove-AppxPackage
Get-AppxPackage -AllUsers *officehub* | Remove-AppxPackage
Get-AppxPackage -AllUsers *oneconnect* | Remove-AppxPackage
Get-AppxPackage -AllUsers *onenote* | Remove-AppxPackage
Get-AppxPackage -AllUsers *people* | Remove-AppxPackage
Get-AppxPackage -AllUsers *phone* | Remove-AppxPackage
Get-AppxPackage -AllUsers *skypeapp* | Remove-AppxPackage
Get-AppxPackage -AllUsers *soundrecorder* | Remove-AppxPackage
Get-AppxPackage -AllUsers *sticky* | Remove-AppxPackage
Get-AppxPackage -AllUsers *sway* | Remove-AppxPackage
Get-AppxPackage -AllUsers *wallet* | Remove-AppxPackage
Get-AppxPackage -AllUsers *Zune* | Remove-AppxPackage

#Get-AppxPackage -AllUsers *calculator* | Remove-AppxPackage
#Get-AppxPackage -AllUsers *solitaire* | Remove-AppxPackage
#Get-AppxPackage -AllUsers *xbox* | Remove-AppxPackage