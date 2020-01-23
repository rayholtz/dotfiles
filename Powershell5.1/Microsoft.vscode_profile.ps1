function change-title {
    param ( [string] $newtitle)
    $host.ui.RawUI.WindowTitle = $newtitle + " - " + $host.ui.RawUI.WindowTitle;
}

Set-Location "C:\Users\Ray.Holtz\Documents\Powershell"

#set-alias cdpo "O:\My Documents\Powershell\Scripts\cdpo.ps1"
#set-alias cdvs "O:\My Documents\Powershell\Scripts\cdvs.ps1"
#set-alias cdne "O:\My Documents\Powershell\Scripts\cdne.ps1"
#set-alias cdzz "O:\My Documents\Powershell\Scripts\cdzz.ps1"
#set-alias tracert "E:\Downloads\Traceroute-WinMTR-v092\WinMTR.exe"
set-alias remcon "Open-VMConsoleWindow"
set-alias convs "$home\Documents\WindowsPowershell\Scripts\convs.ps1"
set-alias opendomain "$home\Documents\WindowsPowershell\Scripts\opendomain.ps1"

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
