
Here are my Boxstarter modules [https://boxstarter.codeplex.com/] for repaving Windows machines.

I recommend trying this on a clean VM first:

* Install chocolatey (http://chocolatey.org/)
* Install Boxstarter with chocolatey by running cinst boxstarter
* Put the contents https://github.com/fschwiet/fschwiet-boxstarter at c:\users\<Username>\AppData\Roaming\Boxstarter, overwriting on collision.
    * I use git clone to another directory, then copy everything that was cloned over.
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


