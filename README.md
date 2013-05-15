
Here are my Boxstarter modules [https://boxstarter.codeplex.com/] for repaving Windows machines.

I recommend trying this on a clean VM first:

* Download & install boxstarter https://boxstarter.codeplex.com/
    * Before uninstalling the zip, unblock it by right-clicking, properties, click "unblock" then "ok"
* Verify the files are at c:\user\%username%\roaming\Boxstarter
* Extract the zip contents of https://github.com/fschwiet/fschwiet-boxstarter/archive/master.zip to the same directory, overwriting the directory BuildPackages.
* (may not be necessary...) Run: Set-BoxstarterShare to start hosting packages

* To install core components (18 gigs for Windows 8 pro as of commit 2a6cf09c6fbb6af7f)
    * Import-Module Boxstarter.Chocolatey
    * Invoke-BoxstarterBuild FschwietCore
    * Boxstarter FschwietCore

* After that much finishes, for dev machines you may want to run (30 gigs for Windows 8 pro as of commit 2a6cf09c6fbb6af7f):
    * Import-Module Boxstarter.Chocolatey
    * Invoke-BoxstarterBuild FschwietDev
    * Boxstarter FschwietDev
    
* maybe you want to run:
    * .\swapCapsLockAndLWin.bat


