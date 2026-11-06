# What no shared check reads: the hard dependencies and the optional-mod gates of this mod. Each optional mod it patches is in loadAfter AND gates a
# LoadFolders.xml folder (IfModActive). XML parse, About identity, images and French keys are Check-ModBasics and Check-Translations.
param(
    [string]$ModRoot = (Join-Path $PSScriptRoot '..\Mod')
)

$ErrorActionPreference = 'Stop'

function Assert-True([bool]$Condition, [string]$Message) {
    if (-not $Condition) { throw $Message }
}

$modRoot = (Resolve-Path $ModRoot).Path
[xml]$about = Get-Content -Raw -LiteralPath (Join-Path $modRoot 'About\About.xml')
$meta = $about.ModMetaData

$hard = @($meta.modDependencies.li | ForEach-Object { $_.packageId })
Assert-True ((@($hard | Sort-Object) -join ',') -eq 'nelim.rimscent.extended,reo.RimScent') 'Unexpected hard dependencies.'
$after = @($meta.loadAfter.li | ForEach-Object { [string]$_ })
[xml]$folders = Get-Content -Raw -LiteralPath (Join-Path $modRoot 'LoadFolders.xml')
$gates = @(Select-Xml -Xml $folders -XPath '//@IfModActive' | ForEach-Object { $_.Node.Value })
foreach ($optional in 'ceteam.combatextended','det.epochsincense','det.epochstallow','mlie.medicalsupplements') {
    Assert-True ($after -contains $optional) "Missing loadAfter: $optional"
    Assert-True ($gates -contains $optional) "Missing LoadFolders gate: $optional"
}

Write-Host 'PASS: hard dependencies, and loadAfter plus LoadFolders gate of each optional mod.'
