param  location string = 'eastus'

resource kv 'Microsoft.KeyVault/vaults@2024-11-01' = {
 name: 'keyvault'
  location: location
   properties: {
      tenantId: 'laboratio1@outlook.com'

      sku: {
         family: 'A' 
          name: 'standard' 
      }

      enableRbacAuthorization: true

   }

}
