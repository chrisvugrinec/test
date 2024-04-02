module site 'br/public:avm/res/web/site:0.3.2' = {
  name: 'siteDeployment'
  params: {
    // Required parameters
    kind: 'app'
    name: 'wswamin001'
    serverFarmResourceId: '<serverFarmResourceId>'
    // Non-required parameters
    location: '<location>'
    siteConfig: {
      alwaysOn: true
      healthCheckPath: '/healthz'
    }
  }
}
