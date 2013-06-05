
try {

    cinst IIS-WebServerRole -source windowsfeatures
    cinst IIS-ManagementScriptingTools -source windowsfeatures
    cinst IIS-WindowsAuthentication -source windowsfeatures
    cinst IIS-ManagementConsole -source windowsfeatures
    cinst IIS-ASPNET -source windowsfeatures
    cinst IIS-ASPNET45 -source windowsfeatures

    cinstm nodist -Pre
    cinstm UrlRewrite

    cinstm phantomjs -version 1.9.0

    Install-ChocolateyPackage 'IIS Node' 'msi' '/passive /norestart' 'http://go.microsoft.com/?linkid=9784330' 'http://go.microsoft.com/?linkid=9784331'

    ## http://get-carbon.org/
    $tempDir = join-path $env:TEMP "CarbonZip"
    Install-ChocolateyZipPackage "Carbon" "http://bitbucket.org/splatteredbits/carbon/downloads/Carbon-1.1.0.zip"  $tempDir
    mv $tempDir\Carbon "$($pshome)\modules"
    rmdir -recurse $tempDir

    Write-ChocolateySuccess 'NodeOnIIS'
} catch {
  Write-ChocolateyFailure 'NodeOnIIS' $($_.Exception.Message)
  throw
}