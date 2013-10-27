try {

    cinstm VisualStudio2012Ultimate
    cinstm mssqlserver2012express

    cinstm Resharper

    cinstm AllBrowsers
    cinstm Dropbox
    cinstm Skype
    cinstm Gimp

    Write-ChocolateySuccess 'FschwietDev'
} catch {
  Write-ChocolateyFailure 'FschwietDev' $($_.Exception.Message)
  throw
}