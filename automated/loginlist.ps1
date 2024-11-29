# Define the list of tenants and their corresponding Bastion details
$tenants = @(
    @{
        TenantId = "tenant1-id"
        SubscriptionId = "subscription1-id"
        BastionName = "bastion1-name"
        ResourceGroupName = "resourceGroup1-name"
        VMResourceId = "vm1-resource-id"
    },
    @{
        TenantId = "tenant2-id"
        SubscriptionId = "subscription2-id"
        BastionName = "bastion2-name"
        ResourceGroupName = "resourceGroup2-name"
        VMResourceId = "vm2-resource-id"
    }
    @{
        TenantId = "tenant2-id"
        SubscriptionId = "subscription2-id"
        BastionName = "bastion2-name"
        ResourceGroupName = "resourceGroup2-name"
        VMResourceId = "vm2-resource-id"
    }
    # Add more tenants as needed
)

# Function to connect to a VM via Bastion
function Connect-ToBastion {
    param (
        [string]$TenantId,
        [string]$SubscriptionId,
        [string]$BastionName,
        [string]$ResourceGroupName,
        [string]$VMResourceId
    )

    # Login to the tenant
    az login --tenant $TenantId

    # Set the subscription
    az account set --subscription $SubscriptionId

    # Connect to the VM using Bastion
    az network bastion rdp --name $BastionName --resource-group $ResourceGroupName --target-resource-id $VMResourceId
}

# Loop through each tenant and connect
foreach ($tenant in $tenants) {
    Connect-ToBastion -TenantId $tenant.TenantId -SubscriptionId $tenant.SubscriptionId -BastionName $tenant.BastionName -ResourceGroupName $tenant.ResourceGroupName -VMResourceId $tenant.VMResourceId
}
