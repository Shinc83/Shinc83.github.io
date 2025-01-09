$Language = "nb-NO"
$GeoId = "0xb1"
$TimeZone = "W. Europe Standard Time"
Install-Language -Language $Language -CopyToSettings
Set-PreferredLanguage -Language $Language
Set-SystemPreferredUILanguage -Language $Language
Set-Culture $Language
Set-WinSystemLocale -SystemLocale $Language
Set-TimeZone -Name 'W. Europe Standard Time'
Set-WinHomeLocation -GeoId $GeoId
Set-WinUserLanguageList -Language $Language -Force -Confirm:$false
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True