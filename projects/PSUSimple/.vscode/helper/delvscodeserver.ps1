$ParentPath = Split-Path -Path $MyInvocation.MyCommand.Path -Parent
$vscodeserverpath = [System.IO.Path]::Combine($ParentPath, 'data', '.vscode-server-insiders')

if (Test-Path($vscodeserverpath)) {
    Remove-Item -Path $vscodeserverpath -Recurse -Force
}
