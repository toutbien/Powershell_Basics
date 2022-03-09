#Powershell Challenge Day 1

#Challenge description: 
#You are a system adminsitrator and need to find and delete any additional files of the following type from a Users' 'Download' folder:
#txt files with a (1) index, or a duplicate of the file already downloaded.

#I broke this down into steps, the first being let's get to the correct directory.
#1 This assumes 'Downloads" is in the same path for each user:
cd $env:UserProfile\Downloads

#2 Then we are locating the files that match that condition of a text file that has a (1) index:
Get-ChildItem | Where {$_.Name -match '[(1)].txt$'}
#BONUS: An alternate option is to include anything which is a duplicate, regardless of numeral:
Get-ChildItem | Where {$_.Name -match '[(\d)].txt$'}

#3 Running either of the above will show you the files you are searching for, if you are running this as a test to make sure you can see the files correctly.
#Now we get rid of them:
Get-ChildItem | Where {$_.Name -match '[(1)].txt$'} | ForEach-Object { Remove-Item -LiteralPath $_.Name }

#Of course you want to make sure it worked, so run #2 (or 2 Bonus) again.
Get-ChildItem | Where {$_.Name -match '[(\d)].txt$'}
#You should get null result, meaning 'nothing happens' in Powershell. 

#4 So, finally let's package that up and set it up for action on localhost systems:
cd $env:UserProfile\Downloads 
Get-ChildItem | Where {$_.Name -match '[(1)].exe$'} | ForEach-Object { Remove-Item -LiteralPath $_.Name }