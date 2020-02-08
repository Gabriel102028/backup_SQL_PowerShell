$Path = "D:\Backup SQL\"
$DaysToKeep = "-1"
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($DaysToKeep)
Get-ChildItem $Path -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Recurse