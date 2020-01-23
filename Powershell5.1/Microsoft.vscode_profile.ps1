function change-title {
    param ( [string] $newtitle)
    $host.ui.RawUI.WindowTitle = $newtitle + " - " + $host.ui.RawUI.WindowTitle;
    }
    
    Set-Location "C:\Users\Ray.Holtz\Documents\Powershell"
    
    #set-alias cdpo "O:\My Documents\Powershell\Scripts\cdpo.ps1"
    #set-alias cdvs "O:\My Documents\Powershell\Scripts\cdvs.ps1"
    #set-alias cdne "O:\My Documents\Powershell\Scripts\cdne.ps1"
    #set-alias cdzz "O:\My Documents\Powershell\Scripts\cdzz.ps1"
    set-alias remcon "Open-VMConsoleWindow"
    #set-alias tracert "E:\Downloads\Traceroute-WinMTR-v092\WinMTR.exe"
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
    
    #$env:PSModulePath.split(';')
    
    <#
    $env:PSModulePath = $env:PSModulePath -replace "\\rovsfile1\users\rholtz\My Documents\Powershell\Modules;"
    $env:PSModulePath = "O:\My Documents\Powershell\Modules\;" + $env:PSModulePath
    #>
    
    <#
    #Save the current value in the $p variable.
    $p = [Environment]::GetEnvironmentVariable("PSModulePath")
    
    #Add the new path to the $p variable. Begin with a semi-colon separator.
    $p += ";O:\My Documents\Powershell\Modules\"
    
    #Add the paths in $p to the PSModulePath value.
    [Environment]::SetEnvironmentVariable("PSModulePath",$p)
    #>
    
    