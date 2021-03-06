$oldworkspaceId = "335b71f7-88c0-4e05-af6b-b61f7e6ba8da"
$mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
$mma.RemoveCloudWorkspace($oldworkspaceId)
$mma.ReloadConfiguration()

$workspaceId = "b1cde6f6-6bfe-488b-a974-ff44169fa69d"
$workspaceKey = "OCvxOxA5Frv05d72mUhsDmtwz0LOafo7p2Aj8aeBcKctInly/n3PxcnuP+EmTMsaP9Q1KZ7upyXDHHaWIWiVuw=="
$mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
$mma.AddCloudWorkspace($workspaceId, $workspaceKey)
$mma.ReloadConfiguration()