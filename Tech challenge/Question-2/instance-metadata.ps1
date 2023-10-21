function Get-AzureVmInstanceMetadata {

# Get Azure Metadata URL
$metadataUrl = "http://169.254.169.254/metadata/instance?api-version=2021-12-13"

# Retrieve Azure Metadata
$metadata = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri $metadataUrl
return $metadata
}

function Get-AzureVmMetadataKeyData {
param (
[Parameter(Mandatory=$true)]
[string]$key
)

# Get Azure Instance Metadata
$metadata = Get-AzureVmInstanceMetadata

# Retrieve the specified key
$value = $metadata.$key
return $value
}

# Script Usage
$metadataValue = Get-AzureVmMetadataKeyData -key Compute
Write-Output $metadataValue
