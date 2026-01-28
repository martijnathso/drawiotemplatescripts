param(
    [string]$name,
    [Parameter(Mandatory=$false)][string]$description,
    [string]$type
)

if(!$description){
    $description = "..."
}

$type += ".xml"

if(!(Test-Path -Path .\$type)){
    Write-Host "The specified type '$type' does not exist."
    exit
}

(Get-Content .\$type) -replace "{{name}}", $name -replace "{{description}}", $description | clip
Write-Host "You can now paste the content from your clipboard into the logic app definition in Draw.io"