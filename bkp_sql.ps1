$Server = 'ServerXX\SQLEXPRESS'
$DatabasePlaycard = 'Playcard'
$BackupSQL = "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Backup\"
$dt = get-date -format MM-dd-yy
$FilePath1 = "($DatabasePlaycard)_db_$($dt).bak"


Backup-SqlDatabase -ServerInstance $Server -Database $DatabasePlaycard -BackupFile $FilePath1

Add-Type -Assembly "System.IO.Compression.FileSystem";
[System.IO.Compression.ZipFile]::CreateFromDirectory($BackupSQL, "D:\Backup SQL\$($DatabasePlaycard)_db_$($dt).zip");
Start-Sleep -Seconds 3
Break