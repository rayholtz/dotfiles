[CmdletBinding()]
param (
    [Parameter()]
    [switch]
    $omron,
    [Parameter()]
    [switch]
    $nidec
    )

if ($omron) {
    $global:creds = (Get-Credential -Message "am.omron.net domain credentials" -UserName "am.omron.net\rayh.admin")
} elseif ($nidec) {
    $global:creds = (Get-Credential -Message "aecia.net domain credentials" -UserName "aecia.net\rayh.admin")

} else { 
    Write-Host "Please specify domain, omron or nidec."
}

