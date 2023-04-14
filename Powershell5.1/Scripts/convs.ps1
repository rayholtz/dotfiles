<#
.SYNOPSIS
    Short description
.DESCRIPTION
    Long description
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
param (
    [Parameter()]
    [switch]$Disconnect =  $false
)

$Server = "oaevc001.aecia.net"

if ($Disconnect) {
    Disconnect-VIServer -Server $Server -Confirm:$false
    Exit
}

try {
    $var = Get-Vm a* -ErrorAction Stop
  } 
catch [VMware.VimAutomation.Sdk.Types.V1.ErrorHandling.VimException.ViServerConnectionException] {
  Write-Host "You're not connected to vCenter...  Connecting Now"
  $Creds = Get-Credential -Message "aecia.net domain credentials" -UserName "aecia.net\rayh.admin"
  Connect-VIServer -Server $Server -Credential $Creds
}



<#

if ($discon) {
    try {
        Disconnect-VIServer -Server $server -Confirm:$false
    }
    catch {
        write-host "You weren't really connected just now."
    }
    finally {
        write-host "Disconnected from $server"
    }
    
}

if ($global:defaultviserver) {
    #connected
    Write-Host "Connected to $global:defaultviserver" 
}
else {
    #NOT Connected
    connect-viserver -Server $server -credential (Get-Credential -Message "aecia.net domain credentials" -UserName "aecia.net\rayh.admin")
}

#>