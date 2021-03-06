$containerName = 'yt'
$credential = Get-Credential -Message 'Using UserPassword authentication. Please enter credentials for the container.'
$auth = 'UserPassword'
$artifactUrl = Get-BcArtifactUrl -type 'Sandbox' -version '' -country 'us' -select 'Latest'
$licenseFile = 'c:\navision\bc16-5.flf'
New-BcContainer `
    -accept_eula `
    -containerName $containerName `
    -credential $credential `
    -auth $auth `
    -artifactUrl $artifactUrl `
    -licenseFile $licenseFile `
    -memoryLimit 8G `
    -updateHosts `
    -includeAL
