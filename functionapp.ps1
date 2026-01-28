param(
    [string]$name,
    [Parameter(Mandatory=$false)][string]$description
)

if(!$description){
    $description = "..."
}

.\base.ps1 -name $name -description $description -type "functionapp"