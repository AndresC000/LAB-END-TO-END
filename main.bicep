

module network 'modules/network.bicep' = {
    name: 'network'
}

module compute 'modules/compute.bicep' = {
   name:'compute'
}

module storage 'modules/storage.bicep'  = {
   name:'storage'
}

module keyvault 'modules/keyvault.bicep' = {
   name: 'keyvault'
}

module monitor 'modules/monitor.bicep' = {
   name:'monitor'
}

