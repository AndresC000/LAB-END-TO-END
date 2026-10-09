param location string = 'eastus'

resource vnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
  name: 'vnet-lab'
  location: location

  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}

resource subnet 'Microsoft.Network/virtualNetworks/subnets@2024-01-01' = {
  parent: vnet
  name: 'subnet web'

  properties: {
     addressPrefix: '10.0.1.0/24'
     }
  }

resource nsg 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'nsg-lab'
  location: location
  properties: {
    securityRules:  [
       {
        name:'Allow-SSH'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: '*'
          destinationAddressPrefix:'*'
          access: 'Allow'
          priority: '1000'
          direction: 'Inbound'
        }
       }
       {
        name: 'Allow-HTTP'
        properties: {
          protocol: 'Tcp'
          sourcePortRange:'*'
          destinationPortRange:'80'
          sourceAddressPrefix:'*'
          destinationAddressPrefix:'*'
          access: 'Allow'
          priority: '110'
          direction: 'Inbound'
        }
       }
       {
        name:'Allow-HTTPS'
        properties: {
          
          protocol: 'Tcp'
          sourcePortRange:'*'
          destinationPortRange:'443'
          sourceAddressPrefix:'*'
          destinationAddressPrefix:'*'
          access: 'Allow'
          priority: '120'
          direction: 'Inbound'
          
        }
      }
    ]
  }
}

