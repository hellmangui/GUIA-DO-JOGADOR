# Apresentacao Imagens Neomedieval Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add the first cinematic neo-medieval western image pass to `apresentacao.html`.

**Architecture:** Keep the deck as static HTML. Add reusable visual-layer CSS to the existing `<style>` block, save project-bound generated raster assets under `assets/apresentacao/`, and apply image classes to the cover, final slide, and the 8 phase divider slides first. Expand to content slides after this hero pass is visually approved.

**Tech Stack:** Static HTML/CSS, generated raster images via built-in image generation, PowerShell verification, in-app browser validation at `localhost:61128/apresentacao.html`.

---

### Task 1: Create A Local Visual Verification Script

**Files:**
- Create: `scripts/verify-apresentacao-visual.ps1`

- [ ] **Step 1: Write the failing verification script**

Create `scripts/verify-apresentacao-visual.ps1` with this content:

```powershell
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
  ".visual-focus-right"
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
  "final-frontier.png"
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

Write-Host "Visual presentation checks passed"
```

- [ ] **Step 2: Run the verification and confirm it fails before implementation**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\verify-apresentacao-visual.ps1
```

Expected: FAIL with `Missing CSS hook: .visual-bg`.

### Task 2: Generate And Persist The Hero Image Set

**Files:**
- Create: `assets/apresentacao/cover-frontier.png`
- Create: `assets/apresentacao/phase-01-survival.png`
- Create: `assets/apresentacao/phase-02-hunt.png`
- Create: `assets/apresentacao/phase-03-farm.png`
- Create: `assets/apresentacao/phase-04-workshops.png`
- Create: `assets/apresentacao/phase-05-modules.png`
- Create: `assets/apresentacao/phase-06-industry.png`
- Create: `assets/apresentacao/phase-07-cooperative.png`
- Create: `assets/apresentacao/phase-08-genetics.png`
- Create: `assets/apresentacao/final-frontier.png`

- [ ] **Step 1: Create the asset directory**

Run:

```powershell
New-Item -ItemType Directory -Force assets\apresentacao
```

Expected: directory exists.

- [ ] **Step 2: Generate one image per required asset**

Use the built-in image generation tool once per asset. Use this shared style block in every prompt:

```text
Use case: historical-scene
Asset type: 16:9 cinematic slide background for a static HTML presentation
Style/medium: photorealistic cinematic realism, grounded frontier world, Red Dead 2 level of texture and lighting quality as broad visual benchmark, original setting and no copied characters or branded elements
World: year 1494, neo-medieval western frontier, rural fortified farms, animals, hand-built tools, iron, leather, dark wood, clay, stone, raw linen, smoke, torchlight, mud, river wetlands, frontier dust
Composition/framing: wide landscape frame, strong negative space for large text overlay, no text inside the image
Lighting/mood: dramatic natural light, smoky atmosphere, premium game key art still
Color palette: charcoal, bone paper, iron red accents, dark leather, wet earth, muted green vegetation
Constraints: no logos, no UI, no readable text, no modern clothing, no modern firearms, no modern machinery, no power lines, no cars, no skyscrapers, no sci-fi, no clean high-fantasy armor
```

Add the following primary request for each asset:

```text
cover-frontier.png: A fortified neo-medieval frontier farm settlement at the edge of a vast wetland, riders and cattle as tiny silhouettes, smoke rising from workshops, open sky and negative space on the left.
phase-01-survival.png: A lone frontier survivor beside a small campfire near reeds and dark water, rough knife, clay pot, canteen, raw leather kit, early dawn mist.
phase-02-hunt.png: A hunter tracking animal prints through wet grass near a river bend, deer and cattle silhouettes in the distance, handmade bow or spear, no modern gun.
phase-03-farm.png: A fortified farmstead with corrals, cattle, crop rows, water cart, workers as small silhouettes, mud paths, warm late afternoon light.
phase-04-workshops.png: Interior of a rustic forge and craft workshop, iron tools, anvils, hanging leather, wood beams, sparks, smoke, medieval frontier utility.
phase-05-modules.png: Wide frontier crossroads with stable, river boat, wagon, primitive rail-like timber tram, clan camp banner, showing layered gameplay systems as one lived-in place.
phase-06-industry.png: A heavy rural industry yard in 1494 style, sawmill, mine entrance, ore carts, charcoal smoke, workers loading wagons, no modern industrial machinery.
phase-07-cooperative.png: Regional market/cooperative yard where sacks, crates, grain, tobacco leaves, leather, timber and metal are traded under banners, muddy square, animals nearby.
phase-08-genetics.png: Mystical but grounded ranch breeding scene, strong cattle and horses in torchlit corral, herbalist/geneticist workstation with glass vials and ice-like stone forge, no sci-fi.
final-frontier.png: Expansive night frontier landscape with distant fortified farms, torches, wetlands, cattle silhouettes and storm clouds, leaving space for final title text.
```

Expected: each final generated image is copied into `assets/apresentacao/` with the exact filename above.

### Task 3: Add Reusable Visual CSS

**Files:**
- Modify: `apresentacao.html`

- [ ] **Step 1: Add visual CSS near the existing slide surface rules**

Insert after the existing `.slide.dark::after` rule:

```css
/* ---------- imagens cinematograficas ---------- */
.visual-bg{
  background-image:var(--visual-image);
  background-size:cover;
  background-position:center;
  overflow:hidden;
}
.visual-bg::before{
  background:
    linear-gradient(90deg, rgba(13,14,16,.88) 0%, rgba(13,14,16,.62) 42%, rgba(13,14,16,.28) 74%, rgba(13,14,16,.56) 100%),
    radial-gradient(ellipse at 18% 42%, rgba(239,7,7,.22), transparent 38%),
    radial-gradient(ellipse at 82% 15%, rgba(255,255,255,.10), transparent 34%);
}
.visual-bg::after{
  content:"";position:absolute;inset:0;pointer-events:none;z-index:0;
  background:
    linear-gradient(180deg, rgba(13,14,16,.08), rgba(13,14,16,.38)),
    radial-gradient(ellipse at 50% 115%, rgba(0,0,0,.62), transparent 52%);
}
.visual-focus-left{background-position:left center}
.visual-focus-right{background-position:right center}
.visual-focus-center{background-position:center}
.visual-bg .phase-no{color:rgba(239,7,7,.25);text-shadow:0 0 90px rgba(0,0,0,.55)}
.visual-bg .wordmark,.visual-bg .sub,.visual-bg h1{filter:drop-shadow(0 4px 18px rgba(0,0,0,.42))}
.visual-bg p.lead,.visual-bg.divider p{color:#ece8df;text-shadow:0 2px 14px rgba(0,0,0,.45)}
```

Expected: the CSS hooks required by the verification script are present.

### Task 4: Apply Images To Cover, Dividers, And Final

**Files:**
- Modify: `apresentacao.html`

- [ ] **Step 1: Update the cover slide**

Change:

```html
<section class="slide dark cover active" data-phase="Início">
```

to:

```html
<section class="slide dark cover active visual-bg visual-focus-right" data-phase="Início" style="--visual-image:url('assets/apresentacao/cover-frontier.png')">
```

- [ ] **Step 2: Update each phase divider**

Add `visual-bg` plus a focus class and the matching image variable:

```html
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 1" style="--visual-image:url('assets/apresentacao/phase-01-survival.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 2" style="--visual-image:url('assets/apresentacao/phase-02-hunt.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 3" style="--visual-image:url('assets/apresentacao/phase-03-farm.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 4" style="--visual-image:url('assets/apresentacao/phase-04-workshops.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 5" style="--visual-image:url('assets/apresentacao/phase-05-modules.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 6" style="--visual-image:url('assets/apresentacao/phase-06-industry.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 7" style="--visual-image:url('assets/apresentacao/phase-07-cooperative.png')">
<section class="slide dark divider visual-bg visual-focus-right" data-phase="Fase 8" style="--visual-image:url('assets/apresentacao/phase-08-genetics.png')">
```

- [ ] **Step 3: Update the final slide**

Change:

```html
<section class="slide dark cover" data-phase="Fim">
```

to:

```html
<section class="slide dark cover visual-bg visual-focus-right" data-phase="Fim" style="--visual-image:url('assets/apresentacao/final-frontier.png')">
```

### Task 5: Verify Locally

**Files:**
- Read: `apresentacao.html`
- Read: `assets/apresentacao/*.png`

- [ ] **Step 1: Run the verification script**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\verify-apresentacao-visual.ps1
```

Expected: `Visual presentation checks passed`.

- [ ] **Step 2: Verify in the browser**

Open or reuse `http://localhost:61128/apresentacao.html`, navigate to slides 1, 7, 14, 22, 29, 40, 51, 54, 59, and 68, and capture screenshots.

Expected: all 10 slides show a background image, title text remains legible, the navigation HUD does not cover important subjects, and no image has readable generated text.

### Task 6: Decide Whether To Expand To Content Slides

**Files:**
- Read: browser screenshots from Task 5
- Modify later: `apresentacao.html`

- [ ] **Step 1: Review the first 10-image hero pass**

Expected: if the visual identity is approved, proceed in the next implementation pass with 15-25 more content-slide images for survival, food, disease, craft, farming, ranch products, module slides, exportation and command reference.

- [ ] **Step 2: If not approved, revise prompts before generating more**

Expected: no content-slide batch is generated until the hero visual identity is acceptable.
