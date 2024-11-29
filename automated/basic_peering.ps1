
# Define variables
$resourceGroup = "LStanleyRG"
$location = "eastus"
$vnet1 = "lsvnet1"
$vnet2 = "lsvnet2"
$subnet1 = "lssubnet1"
$subnet2 = "lssubnet2"
$vm1 = "LSAZ104"
$vm2 = "LSAZ140"
$peer1 = "lspeer1"
$peer2 = "lspeer2"

# Create the first virtual network and subnet
az network vnet create --resource-group $resourceGroup --name $vnet1 --address-prefix 10.0.0.0/16 --subnet-name $subnet1 --subnet-prefix 10.0.1.0/24

# Create the second virtual network and subnet
az network vnet create --resource-group $resourceGroup --name $vnet2 --address-prefix 10.1.0.0/16 --subnet-name $subnet2 --subnet-prefix 10.1.1.0/24

# Create the first VM
az vm create --resource-group $resourceGroup --name $vm1 --vnet-name $vnet1 --subnet $subnet1 --image UbuntuLTS --admin-username azureuser --generate-ssh-keys

# Create the second VM
az vm create --resource-group $resourceGroup --name $vm2 --vnet-name $vnet2 --subnet $subnet2 --image UbuntuLTS --admin-username azureuser --generate-ssh-keys

# Create a virtual network peering from vnet1 to vnet2
az network vnet peering create --resource-group $resourceGroup --name $peer1 --vnet-name $vnet1 --remote-vnet $vnet2 --allow-vnet-access

# Create a virtual network peering from vnet2 to vnet1
az network vnet peering create --resource-group $resourceGroup --name $peer2 --vnet-name $vnet2 --remote-vnet $vnet1 --allow-vnet-access
