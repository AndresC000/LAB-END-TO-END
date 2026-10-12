param  location string = 'eastus'

resource kv 'Microsoft.KeyVault/vaults@2024-11-01' = {
 name: 'keyvault'
  location: location
   properties: {
      tenantId: '00000000-0000-0000-0000-000000000000'

      sku: {
         family: 'A' 
          name: 'standard' 
      }

      enableRbacAuthorization: true

   }

}
