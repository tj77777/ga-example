param location string 
param namePrefix string


resource storageaccount 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: '${namePrefix}xysstorageaccount'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
