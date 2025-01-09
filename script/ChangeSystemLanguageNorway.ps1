$Language = "nb-NO"
$GeoId = "0xb1"
#$TimeZone = "W. Europe Standard Time"
Install-Language -Language $Language -CopyToSettings
Set-PreferredLanguage -Language $Language
Set-SystemPreferredUILanguage -Language $Language
Set-Culture $Language
Set-WinSystemLocale -SystemLocale $Language
#Set-TimeZone -Name 'W. Europe Standard Time' - Denne fungerte ikke, den under fungerte fint.
Set-TimeZone -Name 'Vest-Europa (normaltid)'
Set-WinHomeLocation -GeoId $GeoId

# Denne endrer tastaturet
Set-WinUserLanguageList -Language $Language -Force -Confirm:$false

# Kopierer innstillingene til velkomst-skjermen og nye brukere
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True



# OBS! Hvis man ikke kjører hele skriptet så blir ikke instillingene kopiert riktig med "Copy-UserInternationalSettingsToSystem".
# Under er de linjene jeg har testet individuelt uten hell.

#Install-Language -Language "nb-NO" -CopyToSettings
#Set-PreferredLanguage -Language "nb-NO"
#Set-SystemPreferredUILanguage -Language "nb-NO"
#Set-WinSystemLocale -SystemLocale "nb-NO"


# Test disse.
#Set-Culture "nb-NO"
#Set-TimeZone -Name 'Vest-Europa (normaltid)'
#Set-WinHomeLocation -GeoId "0xb1"