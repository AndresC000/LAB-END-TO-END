param location string = 'eastus'

resource workspace 'Microsoft.OperationalInsights/workspaces@2026-03-01' = {
   name: 'wks-lab-andres'
    location: location 
     properties: {
       sku: {
         name: 'PerGB2018'
       }
     }
}
