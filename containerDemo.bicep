param nameEnv string
param nameApp string
param logAnalWSID string


module managedEnvironment 'br/public:avm/res/app/managed-environment:0.4.3' = {
  name: 'managedEnvironmentDeployment'
  params: {
    // Required parameters
    logAnalyticsWorkspaceResourceId: logAnalWSID
    name: toLower(nameEnv)
  }
}


module containerApp 'br/public:avm/res/app/container-app:0.1.4' = {
  name: 'containerAppDeployment'
  params: {
    // Required parameters
    containers: [
      {
        image: 'mcr.microsoft.com/azuredocs/containerapps-helloworld:latest'
        name: 'simple-hello-world-container'
        resources: {
          cpu: '0.25'
          memory: '0.5Gi'
        }
      }
    ]
    environmentId: managedEnvironment.outputs.resourceId
    name: toLower(nameApp)
  }
}

