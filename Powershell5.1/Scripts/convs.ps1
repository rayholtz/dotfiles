param (
    [Parameter()]
    [switch]$discon =  $false
)

$server = ""

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
    connect-viserver -Server $server -credential (Get-Credential -Message " domain credentials" -UserName "")
}
