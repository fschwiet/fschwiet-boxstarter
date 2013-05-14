Install-WindowsUpdate -AcceptEula
Update-ExecutionPolicy Unrestricted
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Set-TaskbarSmall
Enable-RemoteDesktop

cinstm fiddler
cinst keepass
cinst dropbox
cinstm console-devel
cinstm sublimetext2
cinstm googlechrome
cinstm windirstat
# can we add HW Monitor?  / http://www.cpuid.com/downloads/hwmonitor/1.22-setup.exe
cinstm sysinternals
cinstm NugetPackageExplorer
cinstm windbg

cinstm curl
cinstm putty
cinstm VirtualBox
cinstm WinMerge

# cinstm git-credential-winstore
# cinstm poshgit
# cinst msysgit  # to set path... le sigh
# cinst githubforwindows


cinst IIS-WebServerRole -source windowsfeatures
cinst IIS-HttpCompressionDynamic -source windowsfeatures
cinst IIS-ManagementScriptingTools -source windowsfeatures
cinst IIS-WindowsAuthentication -source windowsfeatures
cinst IIS-BasicAuthentication -source windowsfeatures
cinst IIS-ASPNET -source windowsfeatures
cinst IIS-ASPNET45 -source windowsfeatures
cinst IIS-ManagementConsole -source windowsfeatures

cinst aspnetmvc -version 2.0
cinst aspnetmvc -version 3.0

$sublimeDir = "$env:programfiles\Sublime Text 2"

Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\mstsc.exe"
Install-ChocolateyPinnedTaskBarItem "$env:programfiles\console\console.exe"
Install-ChocolateyPinnedTaskBarItem "$sublimeDir\sublime_text.exe"
Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFiles86)\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFiles86)\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe"

Install-ChocolateyFileAssociation ".txt" "$env:programfiles\Sublime Text 2\sublime_text.exe"
Install-ChocolateyFileAssociation ".dll" "$($Boxstarter.ChocolateyBin)\dotPeek.bat"

# if(!(Test-Path("$sublimeDir\data")){mkdir "$sublimeDir\data"}
# copy-item (Join-Path (Get-PackageRoot($MyInvocation)) 'sublime\*') -Force -Recurse "$sublimeDir\data"
# move-item "$sublimeDir\data\Pristine Packages\*" -Force "$sublimeDir\Pristine Packages"

copy-item (Join-Path (Get-PackageRoot($MyInvocation)) 'console.xml') -Force $env:appdata\console\console.xml

try {
    Write-ChocolateySuccess 'FschwietCore'
} catch {
  Write-ChocolateyFailure 'FschwietCore' $($_.Exception.Message)
  throw
}