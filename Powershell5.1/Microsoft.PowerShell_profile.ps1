function change-title {
    param ( [string] $newtitle)
    $host.ui.RawUI.WindowTitle = $newtitle + " - " + $host.ui.RawUI.WindowTitle;
}

Set-Location "C:\Users\Ray.Holtz\Documents\Powershell"

set-alias remcon "Open-VMConsoleWindow"
set-alias convs "$home\Documents\WindowsPowershell\Scripts\convs.ps1"
set-alias getcreds "$home\Documents\WindowsPowershell\Scripts\getcreds.ps1"
set-alias opendomain "$home\Documents\WindowsPowershell\Scripts\opendomain.ps1"
import-module "$home\Documents\WindowsPowershell\Scripts\Get-LastError.ps1"

function prompt {
    $curPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
    if ($curPath.ToLower().StartsWith("$home\Documents\Powershell".ToLower()))
    {
        $curPath = "~" + $curPath.SubString("$home\Documents\Powershell".Length)
    }

    Write-host "PS : " -nonew
    Write-host $curPath -foregroundcolor cyan
    "$('>' * ($nestedPromptLevel + 1)) "
}
