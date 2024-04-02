module containerApp 'br/public:avm/res/app/container-app:0.1.4' = {
  name: 'containerAppDeployment'
  params: {
    // Required parameters
    containers: [
      {
        image: 'mcr.microsoft.com/azuredocs/containerapps-helloworld:latest'
        name: 'simple-hello-world-container'
        resources: {
          cpu: '<cpu>'
          memory: '0.5Gi'
        }
      }
    ]
    environmentId: '<environmentId>'
    name: 'acamin001'
    // Non-required parameters
    location: '<location>'
  }
}
