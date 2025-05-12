param namePrefix string
param location string
param sku string

resource appServicePlan 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: '${namePrefix}-appServicePlan'
  location: location
  kind: 'ubuntu'
  sku: {
    name: sku
  
  }
}

output appid string = appServicePlan.id
