param (
    [Parameter()]
    [switch]$discon =  $false
)

$server = "oaevc001.am.omron.net"

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
    connect-viserver -Server $server -credential (Get-Credential -Message "am.omron.net domain credentials" -UserName "am.omron.net\rayh.admin")
}