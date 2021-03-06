$workspaceId = "b1cde6f6-6bfe-488b-a974-ff44169fa69d"
$workspaceKey = "OCvxOxA5Frv05d72mUhsDmtwz0LOafo7p2Aj8aeBcKctInly/n3PxcnuP+EmTMsaP9Q1KZ7upyXDHHaWIWiVuw=="
$mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
$mma.AddCloudWorkspace($workspaceId, $workspaceKey)
$mma.ReloadConfiguration()