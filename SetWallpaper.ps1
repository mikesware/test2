
#Enter-PSSession -ComputerName <RemoteComputerName> -Credential <Domain\Username>
$wfile="C:\DATA\MW.JPG"
$wfile="C:\DATA\Mjr.jpg"
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value $wfile
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name WallpaperStyle -Value 2
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name TileWallpaper -Value 0
    rundll32.exe user32.dll, UpdatePerUserSystemParameters 1 , TRUE
    Get-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper 
    
