Set shell = CreateObject("Shell.Application")
Set fileSystem = CreateObject("Scripting.FileSystemObject")

scriptPath = fileSystem.BuildPath(fileSystem.GetParentFolderName(WScript.ScriptFullName), "Install-NezhaAgent.ps1")
arguments = "-NoProfile -ExecutionPolicy Bypass -File " & Chr(34) & scriptPath & Chr(34)

shell.ShellExecute "powershell.exe", arguments, "", "runas", 0