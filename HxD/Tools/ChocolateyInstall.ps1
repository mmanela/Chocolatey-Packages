try {
    $drop = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
    $exe = "$drop\setup.exe"
    Install-ChocolateyZipPackage 'HxD' 'http://mh-nexus.de/downloads/HxDSetupEN.zip' $drop
    Install-ChocolateyInstallPackage "HxD" 'exe' "/silent" $exe

    Write-ChocolateySuccess 'HxD'
} catch {
    Write-ChocolateyFailure 'HxD' $($_.Exception.Message)
    throw 
}