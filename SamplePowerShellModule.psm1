# Dot-source private and public functions
$privateFunctions = Join-Path $PSScriptRoot "Private\*.ps1"
Get-ChildItem -Path $privateFunctions | ForEach-Object {
    . $_.FullName
}

$publicFunctions = Join-Path $PSScriptRoot "Public\*.ps1"
Get-ChildItem -Path $publicFunctions | ForEach-Object {
    . $_.FullName
}

# Load extensions
function _LoadExtensions {
    $extensionPath = Join-Path $PSScriptRoot "Extensions\*.ps1"
    Get-ChildItem -Path $extensionPath | ForEach-Object {
        . $_.FullName
    }
}

_LoadExtensions

# Export public functions
Export-ModuleMember -Function 'Get-SampleData', 'Get-SampleExtension'
