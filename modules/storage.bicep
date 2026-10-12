param location string = 'eastus'

resource storage 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name:'stlabandres001'
  location: location
   sku: {
     name: 'Standard_ZRS'
   }
    kind: 'StorageV2'
}
