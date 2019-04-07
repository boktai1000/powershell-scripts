Get-VMotion -Hours 48 | Select-Object Name,SrcHost,DstHost,StartTime,Endtime,Username | Sort-Object StartTime | Export-Csv FILENAME.csv
