$number= 0..9
$Pass = foreach($num in $number){Invoke-RestMethod -Method Get -Uri https://www.dinopass.com/password/strong | Out-string}
Write-Host "Type Entry:" -nonewline
$Entry = foreach($num in $number){Write-Host "Type Entry:" -NoNewline | Read-Host}
$Pass1 = $Pass.Get(0)
$Pass2 = $Pass.Get(1)
$Pass3 = $Pass.Get(2)
$Pass4 = $Pass.Get(3)
$Pass5 = $Pass.Get(4)
$Pass6 = $Pass.Get(5)
$pass7 = $Pass.get(6)
$Pass8 = $Pass.Get(7)
$Pass9 = $Pass.Get(8)
$Pass10 = $Pass.Get(9)

$Entry1 = $Entry.Get(0)
$Entry2 = $Entry.Get(1)
$Entry3 = $Entry.Get(2)
$Entry4 = $Entry.Get(3)
$Entry5 = $Entry.Get(4)
$Entry6 = $Entry.Get(5)
$Entry7 = $Entry.Get(6)
$Entry8 = $Entry.Get(7)
$Entry9 = $Entry.Get(8)
$Entry10 = $Entry.Get(9)

Add-Content .\Passwordmapping.csv -Value "$Entry1,$Pass1","$Entry2,$Pass2","$Entry3,$Pass3","$Entry4,$Pass4","$Entry5,$Pass5","$Entry6,$Pass6","$Entry7,$Pass7","$Entry8,$Pass8","$Entry9,$Pass9","$Entry10,$Pass10" -NoNewline
Write-host "Please Wait"
foreach($num in $number){write-host ($num+1)
start-sleep 1}
Invoke-item .\Passwordmapping.csv