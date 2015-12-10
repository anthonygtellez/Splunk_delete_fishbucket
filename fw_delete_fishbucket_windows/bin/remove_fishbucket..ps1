# Windows PowerShell check 'If File Exists'
$ChkFile = "C:\Program Files\SplunkUniversalForwarder\.fishbucket" 
$FileExists = Test-Path $ChkFile 
If ($FileExists -eq $True)
Exit
Else
fsutil createNew "C:\Program Files\SplunkUniversalForwarder\.fishbucket" 1000
NET STOP SplunkForwarder
@RD /S /Q "C:\Program Files\SplunkUniversalForwarder\var\lib\splunk\fishbucket\*"
timeout /t 30 /nobreak
NET START SplunkForwarder