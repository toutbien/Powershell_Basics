#Create a class of Organizational Users:
class UserClass{
    [String]$Name
    [Int]$UserNumber
    [String]$OfficeLoc
    [Int]$Extension
    [PCClass[]]$PC
}

#Define the PCClass requirements of our User category:
class PCClass{
    [String]$PCName
    [Int]$IPAddress
    [String]$ClrLevel
}

#List creation to  hold the users:
$Users = New-Object 'System.Collections.Generic.List[PSObject]'

#Adding a new user
$newUser = [UserClass]::new()
$newUser.Name = "James Dean"
$newUser.UserNumber = "8943306"
$newUser.OfficeLoc = "Dallas"
$newUser.Extension = "4344"

#Identify the PCClass for our new user:
for ($i = 0; $i -le 5; $i++){
    $newPC = [PCClass]::new()
    $newPC.PCName = $i
    $newPC.IPAddress = $i + 2
    $newPC.ClrLevel = "Secret"

    #Add this PC to the new User:
    $newUser.PC += $newPC
}

#Lets put James Dean in the User list above:
$Users.Add($newUser)

$Users | Where-Object {$_.Name -eq "James Dean"} | Select-Object -ExpandProperty PC
