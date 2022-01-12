#This was created to update days left in class for the MSSA CSCA5 cohort in 2022 by @toutbien
#Updated to math instead of Get-Date to calculate days until end of course
#added automation to post at 0830EST each day

$hookUrl = 'https://discordapp.com/api/webhooks/930814014425006140/oktV16m1AtRcdGqj2HIpt0cI3UefZoRlEU941RyHwEkBwWKAGvlOh8me0aHzcV65I7ek'
$days = [math]::Ceiling((([DateTime]'05-10-2022')-(Get-Date)).TotalDays)
$content = @"
This is a powershell script sent from toutbien's command center.
Starlog date and time information : $(Get-Date)
We have $($days) more days left!
I hope everyone has a great day today!
"@

$payload = [PSCustomObject]@{

    content = $content

}

Invoke-RestMethod -Uri $hookUrl -Method Post -Body ($payload | ConvertTo-Json) -ContentType 'Application/Json'