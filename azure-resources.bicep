param location string = resourceGroup().location

param storageName string = 'xyzwgastorage'


resource storageaccount 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
