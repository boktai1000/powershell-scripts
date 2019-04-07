Get-VMotion | Select-Object Name,SrcHost,DstHost,StartTime | Sort-Object StartTime | Export-Csv FILENAME.csv
