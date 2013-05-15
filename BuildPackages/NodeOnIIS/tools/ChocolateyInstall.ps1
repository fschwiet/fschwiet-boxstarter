
try {

    Install-ChocolateyPackage 'NodeJS 0.10.5' 'msi' '/passive /norestart' 'http://nodejs.org/dist/v0.10.5/node-v0.10.5-x86.msi' http://nodejs.org/dist/v0.10.5/x64/node-v0.10.5-x64.msi'
    Install-ChocolateyPackage 'IIS Node' 'msi' '/passive /norestart' 'http://go.microsoft.com/?linkid=9784330' 'http://go.microsoft.com/?linkid=9784331'
    cinstm UrlRewrite

    Write-ChocolateySuccess 'NodeOnIIS'
} catch {
  Write-ChocolateyFailure 'NodeOnIIS' $($_.Exception.Message)
  throw
}