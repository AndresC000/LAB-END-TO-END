targetScope = 'subscription'

@description('RG-LAB END TO END')
param rgName string = 'rg-lab-endto-end'

@description('ubicacion')
param location string = 'eastus'

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
    name: rgName
    location: location
}

