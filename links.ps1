$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("C:\Work\Scripts\shortcut.lnk")

$pwsh_path = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
if ($shorcut.TargetPath -ne $pwsh_path) {
    $shortcut.TargetPath = $pwsh_path
    $shortcut.Save()
}