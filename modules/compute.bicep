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


resource vm 'Microsoft.Compute/virtualMachines@2024-03-01' = {
  name:'vm-ubuntu-lab'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B1s'
    }
    osProfile: {
      computerName: 'vm-ubuntu-lab'
      adminUsername: 'azureuser'
      adminPassword: 'Lab12345'
    }
    storageProfile: {
      imageReference: {
        publisher: 'Cannonical'
        offer: '0001-com-ubuntu-server-jammy'
        sku:'22-04-lts'
        version: 'lastest'
      }
    }
    networkProfile: {
      networkInterfaces: [ {id: nic.id} 
      ]
    }
  }
}


