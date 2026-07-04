$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$htmlPath = Join-Path $root "apresentacao.html"
$assetDir = Join-Path $root "assets\apresentacao"

if (-not (Test-Path $htmlPath)) {
  throw "apresentacao.html not found"
}

$html = Get-Content -Raw -Encoding UTF8 $htmlPath

$requiredCss = @(
  ".visual-bg",
  ".visual-bg::before",
  ".visual-bg::after",
  ".visual-focus-left",
  ".visual-focus-right",
  ".scene-card",
  ".scene-card::after"
)

foreach ($needle in $requiredCss) {
  if ($html -notlike "*$needle*") {
    throw "Missing CSS hook: $needle"
  }
}

$requiredAssets = @(
  "cover-frontier.png",
  "phase-01-survival.png",
  "phase-02-hunt.png",
  "phase-03-farm.png",
  "phase-04-workshops.png",
  "phase-05-modules.png",
  "phase-06-industry.png",
  "phase-07-cooperative.png",
  "phase-08-genetics.png",
  "final-frontier.png",
  "card-overview-survival.png",
  "card-overview-farm.png",
  "card-water.png",
  "card-food.png",
  "card-health-herbs.png",
  "card-venom.png",
  "card-fire-craft.png",
  "card-herbs.png",
  "card-woodcut.png",
  "card-mining.png",
  "card-hunting.png",
  "card-fishing.png",
  "card-cattle.png",
  "card-legendary.png",
  "card-house.png",
  "card-ranch.png",
  "card-crops.png",
  "card-forge.png",
  "card-tools.png",
  "card-artisan.png",
  "card-rations-herbs.png",
  "card-stable.png",
  "card-transport-modules.png",
  "card-dominium.png",
  "card-export-crates.png"
)

foreach ($asset in $requiredAssets) {
  $assetPath = Join-Path $assetDir $asset
  if (-not (Test-Path $assetPath)) {
    throw "Missing asset: assets/apresentacao/$asset"
  }
  $url = "assets/apresentacao/$asset"
  if ($html -notlike "*$url*") {
    throw "HTML does not reference $url"
  }
}

$visualSlideCount = ([regex]::Matches($html, "visual-bg")).Count
if ($visualSlideCount -lt 10) {
  throw "Expected at least 10 visual-bg references, found $visualSlideCount"
}

$sceneCardMapCount = ([regex]::Matches($html, "assets/apresentacao/card-[^'`"]+\.png")).Count
if ($sceneCardMapCount -lt 24) {
  throw "Expected at least 24 card scene mappings, found $sceneCardMapCount"
}

if ($html -notlike "*card.classList.add('scene-card')*") {
  throw "Card scene mapping does not apply the scene-card class"
}

Write-Host "Visual presentation checks passed"
