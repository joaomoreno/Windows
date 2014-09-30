param (
    [Parameter(Mandatory=$true)]
    [string]
    $FileName,

    [string]
    $Path = "."
)

ls -Path $Path -Filter $FileName -Recurse | % { $_.VersionInfo } | ft FileVersion, FileName -AutoSize
