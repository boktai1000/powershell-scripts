gci -Recurse | select FullName | %{get-Filehash -Algorithm md5 -Path $_.FullName ; get-FileHash -Algorithm sha1 -Path $_.FullName} | format-list
