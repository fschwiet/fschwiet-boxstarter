
Boxstarter [https://boxstarter.codeplex.com/] is a tool that extends Chocolatey to make setting up new Windows machines repeatable and reliable.

Basically, custom modules are developed and kept in source control.  To run them from a machine, that source code repository is placed in boxstarter's working directory.  Its straightforward to read what a package does, or copy a package to create a new one.  Its a good idea to test things on a VM first.

The easiest way to extend a package is to add dependencies that are in the chocolatey gallery [http://chocolatey.org/].  The are additional commands available from both chocolatey and boxstarter (https://github.com/chocolatey/chocolatey/wiki/CommandsReference and http://boxstarter.codeplex.com/documentation)

To run the packages:

* Install .NET 4.0 (you can check if its installed by looking C:\Windows\Microsoft.NET\Framework)
* Install Chocolatey (http://chocolatey.org/)
* Run: chocolatey install boxstarter
* Run: chocolatey install git
* cd c:\users\\*username*\AppData\Roaming\BoxStarter
* git clone "https://github.com/fschwiet/fschwiet-boxstarter" BuildPackages

* You'll need to enable scripting from an administrative powershell console:
    * Set-ExecutionPolicy Unrestricted

* To run a package (use powershell):
    * Import-Module $env:appdata\boxstarter\Boxstarter.Chocolatey\Boxstarter.Chocolatey.psd1
    * Invoke-BoxstarterBuild *packageName*
    * Boxstarter *packageName*

* Packages available in this codebase (you'll probably want to write your own, use these for review):
    * FschwietCore (18 gigs on Windows 8 pro as of commit 2a6cf09c6fbb6af7f)
    * FschwietDev  (size(fschwietCore) + 12gigs as of commit 2a6cf09c6fbb6af7f):
    * NodeOnIIS (installs node.js, version managed by nodeinst with IIS dependencies installed)
    
* Random config script I like I haven't found a package for:
    * .\swapCapsLockAndLWin.bat


