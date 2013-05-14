
Here are my Boxstarter modules [https://boxstarter.codeplex.com/] for repaving Windows machines.

I recommend trying this on a clean VM first:

* Download & install boxstarter https://boxstarter.codeplex.com/
* Verify the files are at c:\user\%username%\roaming\Boxstarter
* Extract the zip contents of https://github.com/fschwiet/fschwiet-boxstarter/archive/master.zip to the same directory, overwriting the directory BuildPackages.
* Run: Set-BoxstarterShare to start hosting packages
* Run: \\%computername%\Boxstarter\Boxstarter FschwietCore
* (for dev machines) Run: \\%computername%\Boxstarter\Boxstarter FschwietDev


