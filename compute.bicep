param location string = 'eastus'

resource publicIP 'Microsoft.Network/publicIPAddresses@2024-01-01' = {
  name: 'pip-vm-lab'

  location: location

  sku: {
    name: 'Standard'
  }

  properties: {
    publicIPAllocationMethod: 'Static'
  }
}

resource nic 'Microsoft.Network/networkInterfaces@2024-01-01' = {
  name:'nic-mv-lab'
  location: location
  properties: {
    ipConfigurations: [
     {
      name: 'ipconfig1'

      properties: {
        privateIPAllocationMethod: 'Dynamic'
        publicIPAddress: {
          id: publicIP.id
        }
      }
     }
    ]
  }
}
