param(
    [string]$ModRoot = (Join-Path $PSScriptRoot '..\Mod')
)

$ErrorActionPreference = 'Stop'

function Assert-True([bool]$Condition, [string]$Message) {
    if (-not $Condition) { throw $Message }
}

$modRoot = (Resolve-Path $ModRoot).Path
$xmlFiles = @(Get-ChildItem $modRoot -Recurse -Filter *.xml -File)
Assert-True ($xmlFiles.Count -eq 21) "Expected 21 distributed XML files; found $($xmlFiles.Count)."
foreach ($file in $xmlFiles) {
    try { [xml](Get-Content -Raw -LiteralPath $file.FullName) | Out-Null }
    catch { throw "Malformed XML: $($file.FullName): $($_.Exception.Message)" }
}

[xml]$about = Get-Content -Raw -LiteralPath (Join-Path $modRoot 'About\About.xml')
$meta = $about.ModMetaData
Assert-True ($meta.name -eq 'RimScent Extended: Industry Expansion (unofficial)') 'Unexpected display name.'
Assert-True ($meta.packageId -eq 'nelim.rimscent.extended.industry') 'Unexpected packageId.'
Assert-True ($meta.url -eq 'https://github.com/vbardales/Rimworld-RimScent-Extended-Industry-Expansion') 'Unexpected repository URL.'
Assert-True ($meta.description.TrimEnd().EndsWith('[url=https://github.com/vbardales/Rimworld-RimScent-Extended-Industry-Expansion]Source code on GitHub[/url]')) 'Description must end with the source link.'

$hard = @($meta.modDependencies.li | ForEach-Object { $_.packageId })
Assert-True ((@($hard | Sort-Object) -join ',') -eq 'nelim.rimscent.extended,reo.RimScent') 'Unexpected hard dependencies.'
$after = @($meta.loadAfter.li | ForEach-Object { [string]$_ })
[xml]$folders = Get-Content -Raw -LiteralPath (Join-Path $modRoot 'LoadFolders.xml')
$gates = @(Select-Xml -Xml $folders -XPath '//@IfModActive' | ForEach-Object { $_.Node.Value })
foreach ($optional in 'ceteam.combatextended','det.epochsincense','det.epochstallow','mlie.medicalsupplements') {
    Assert-True ($after -contains $optional) "Missing loadAfter: $optional"
    Assert-True ($gates -contains $optional) "Missing LoadFolders gate: $optional"
}

$ownKeys = @(
    'RimScentExtended_Scent_Mould.stages.mould',
    'RimScentExtended_Scent_Slime.stages.slime',
    'RimScentExtended_Scent_Crematorium.stages.crematorium_smoke',
    'RimScentExtended_Scent_Smelter.stages.hot_metal',
    'RimScentExtended_Scent_SmellingSalts.stages.ammonia',
    'RimScentExtended_Scent_Pharmacy.stages.pharmacy_smell',
    'RimScentExtended_Scent_Torch.stages.torch_smoke',
    'RimScentExtended_Scent_Tallow.stages.burning_tallow'
)
$french = @{}
Get-ChildItem $modRoot -Recurse -Filter *.xml -File |
    Where-Object { $_.FullName -match '[\\/]Languages[\\/]French[\\/]DefInjected[\\/]' } |
    ForEach-Object {
        [xml]$language = Get-Content -Raw -LiteralPath $_.FullName
        foreach ($node in $language.LanguageData.ChildNodes) {
            if ($node.NodeType -eq 'Element') { $french[$node.Name] = $node.InnerText }
        }
    }
foreach ($key in $ownKeys) {
    foreach ($field in 'label','description') {
        $full = "$key.$field"
        Assert-True ($french.ContainsKey($full) -and -not [string]::IsNullOrWhiteSpace($french[$full])) "Missing French key: $full"
    }
}

Add-Type -AssemblyName System.Drawing
foreach ($asset in @(
    @{ Path = 'About\ModIcon.png'; Width = 128; Height = 128; MaxBytes = 1048576 },
    @{ Path = 'About\Preview.png'; Width = 896; Height = 504; MaxBytes = 1048576 }
)) {
    $path = Join-Path $modRoot $asset.Path
    $image = [System.Drawing.Image]::FromFile($path)
    try {
        Assert-True ($image.Width -eq $asset.Width -and $image.Height -eq $asset.Height) "Unexpected dimensions: $($asset.Path)"
        Assert-True ((Get-Item $path).Length -lt $asset.MaxBytes) "Oversized asset: $($asset.Path)"
    }
    finally { $image.Dispose() }
}

Write-Host "PASS: $($xmlFiles.Count) XML files, metadata, dependency gates, French own ThoughtDef keys, and delivered assets."
