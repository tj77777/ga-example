param namePrefix string = 'tjay'
param location string = resourceGroup().location
param sku string = 'F1'

param dockerImage string = 'ubuntu/nginx'
param dockerImageTag string = 'latest'

targetScope = 'resourceGroup'

module storage 'modules/storage.bicep'={
   params:{
     location: location
     namePrefix: namePrefix
   }
}

module appDeploy 'modules/servicePlan.bicep'={
   params:{
     location: location
     namePrefix: namePrefix
     sku:sku
   }
}

module webapp 'modules/webapp.bicep'={
   params:{
     appPlandId: appDeploy.outputs.appid
     dockerImage: dockerImage
     dockerImageTag: dockerImageTag
     location: location
     namePrefix: namePrefix
   }
}

output wesite_url string = webapp.outputs.siteUrl
