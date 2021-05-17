param (
    [Parameter(mandatory)] $SourceFilePath,
    [Parameter(mandatory)] $TargetFilePath
)

Copy-Item $SourceFilePath -Destination $TargetFilePath
