<#
.SYNOPSIS
  Quick workspace health check (repo-aware via RepoConfig.psd1).

.DESCRIPTION
  Consistent, fast health check across repositories:
  - Validates expected folder structure from tools/psscripts/RepoConfig.psd1
  - Counts markdown files
  - Reports YAML frontmatter presence and 150-line guideline as warnings

  Exit code:
  - 0 if expected folders exist
  - 1 if any expected folder is missing

.PARAMETER Path
  Optional subpath (relative to repo root) to limit markdown counting/YAML checks.

.EXAMPLE
  .\tools\psscripts\Quick-HealthCheck.ps1

.EXAMPLE
  .\tools\psscripts\Quick-HealthCheck.ps1 -Path "src"
#>

[CmdletBinding()]
param(
  [string]$Path = "."
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\.." )).Path
$configPath = Join-Path $repoRoot "tools\psscripts\RepoConfig.psd1"
if (-not (Test-Path -LiteralPath $configPath)) {
  throw "Missing repo config: $configPath"
}

$config = Import-PowerShellDataFile -Path $configPath
$repoName = if ($config.RepoName) { $config.RepoName } else { (Split-Path -Leaf $repoRoot) }

$scanRoot = if ($Path -eq ".") {
  $repoRoot
} else {
  $resolved = Resolve-Path -LiteralPath (Join-Path $repoRoot $Path) -ErrorAction SilentlyContinue
  if ($resolved) { $resolved.Path } else { $repoRoot }
}

Write-Host "=== Quick Health Check ===" -ForegroundColor Cyan
Write-Host "Repo: $repoName" -ForegroundColor Gray
Write-Host "Root: $repoRoot" -ForegroundColor Gray
Write-Host "Scan: $scanRoot" -ForegroundColor Gray
Write-Host ""

Write-Host "📁 Folder Structure:" -ForegroundColor Yellow
$expectedFolders = @($config.ExpectedFolders)
if (-not $expectedFolders -or $expectedFolders.Count -eq 0) {
  throw "RepoConfig.psd1 must define ExpectedFolders"
}

$structureOk = $true
foreach ($folder in $expectedFolders) {
  $fullPath = Join-Path $repoRoot $folder
  if (Test-Path -LiteralPath $fullPath) {
    Write-Host "  ✅ $folder" -ForegroundColor Green
  } else {
    Write-Host "  ❌ $folder - MISSING" -ForegroundColor Red
    $structureOk = $false
  }
}

Write-Host ""

Write-Host "📄 Markdown Files:" -ForegroundColor Yellow
$mdFiles = Get-ChildItem -Path $scanRoot -Recurse -Filter '*.md' -ErrorAction SilentlyContinue |
  Where-Object { $_.FullName -notmatch 'node_modules|\\.git' }

Write-Host "  Total: $($mdFiles.Count) files" -ForegroundColor Cyan
$byDir = $mdFiles | Group-Object DirectoryName | Sort-Object Count -Descending | Select-Object -First 5
foreach ($dir in $byDir) {
  $relPath = $dir.Name.Replace($repoRoot, '').TrimStart('\\')
  Write-Host "  - $relPath`: $($dir.Count) files" -ForegroundColor Gray
}

Write-Host ""

Write-Host "📋 YAML + Line-Length (Warnings):" -ForegroundColor Yellow
$yamlCheckRoots = @($config.YamlCheckRoots)
if (-not $yamlCheckRoots -or $yamlCheckRoots.Count -eq 0) {
  $yamlCheckRoots = @('src')
}

$filesWithYaml = 0
$filesWithoutYaml = 0
$filesOverLimit = 0

$checkedFiles = @()
foreach ($rootRel in $yamlCheckRoots) {
  $rootPath = Join-Path $repoRoot $rootRel
  if (-not (Test-Path -LiteralPath $rootPath)) { continue }
  $checkedFiles += Get-ChildItem -Path $rootPath -Recurse -File -Filter '*.md' -ErrorAction SilentlyContinue
}

$checkedFiles = $checkedFiles | Sort-Object FullName -Unique
foreach ($file in $checkedFiles) {
  $content = Get-Content -LiteralPath $file.FullName -Raw -ErrorAction SilentlyContinue
  $lineCount = (Get-Content -LiteralPath $file.FullName -ErrorAction SilentlyContinue).Count

  if ($content -match '^---\s*\r?\n') {
    $filesWithYaml++
  } else {
    $filesWithoutYaml++
  }

  if ($lineCount -gt 150) {
    $filesOverLimit++
  }
}

Write-Host "  ✅ Files with YAML: $filesWithYaml" -ForegroundColor Green
if ($filesWithoutYaml -gt 0) {
  Write-Host "  ⚠️  Files without YAML: $filesWithoutYaml" -ForegroundColor Yellow
}
if ($filesOverLimit -gt 0) {
  Write-Host "  ⚠️  Files over 150 lines: $filesOverLimit" -ForegroundColor Yellow
}

Write-Host ""

Write-Host "=== Summary ===" -ForegroundColor Cyan
if ($structureOk) {
  Write-Host "✅ Health Check: PASSED" -ForegroundColor Green
  return
}

Write-Host "❌ Health Check: FAILED" -ForegroundColor Red
Write-Host "  - Missing expected folders" -ForegroundColor Red
throw "Health Check failed: missing expected folders."
Write-Host "Check: Forbidden '*00_*' files" 
if ($bad00.Count -eq 0) {
  Write-Host "- OK: none found" 
} else {
  Write-Host "- FAIL: found $($bad00.Count) file(s):" 
  $bad00 | ForEach-Object { Write-Host "  - $($_.FullName)" }
}

# 2) Relative markdown links to missing files (best-effort)
$mdFiles = @(Get-MarkdownFiles)
$missingLinks = New-Object System.Collections.Generic.List[object]
$linkRegex = [regex]'\[[^\]]+\]\(([^\)]+)\)'

foreach ($file in $mdFiles) {
  $content = Get-Content -LiteralPath $file.FullName -ErrorAction Stop
  for ($i = 0; $i -lt $content.Count; $i++) {
    $line = $content[$i]
    foreach ($m in $linkRegex.Matches($line)) {
      $target = $m.Groups[1].Value.Trim()
      if ([string]::IsNullOrWhiteSpace($target)) { continue }
      if ($target.StartsWith('#')) { continue }
      if ($target -match '^(https?://|mailto:|tel:)' ) { continue }
      if ($target -match '^<.*>$') { continue }

      $targetNoAnchor = $target.Split('#')[0]
      $targetNoQuery = $targetNoAnchor.Split('?')[0]
      if ([string]::IsNullOrWhiteSpace($targetNoQuery)) { continue }

      # ignore images, keep simple
      if ($targetNoQuery -match '\.(png|jpg|jpeg|gif|svg)$') { continue }

      $resolved = Join-Path -Path $file.Directory.FullName -ChildPath $targetNoQuery
      if (-not (Test-Path -LiteralPath $resolved)) {
        $missingLinks.Add([pscustomobject]@{
          File = $file.FullName
          Line = ($i + 1)
          Target = $target
          Resolved = $resolved
        })
      }
    }
  }
}

Write-Host "" 
Write-Host "Check: Markdown links to missing files (best-effort)" 
if ($missingLinks.Count -eq 0) {
  Write-Host "- OK: no missing relative links detected" 
} else {
  Write-Host "- WARN: found $($missingLinks.Count) potentially missing link(s)" 
  $missingLinks | Select-Object -First 25 | ForEach-Object {
    Write-Host ("  - {0} (L{1}): {2}" -f $_.File, $_.Line, $_.Target)
  }
  if ($missingLinks.Count -gt 25) {
    Write-Host "  - ... (truncated)" 
  }
}

# 3) Duplicate headings across markdown (high-signal only)
$headingRegex = [regex]'^(#{1,6})\s+(.+?)\s*$'
$headingMap = @{}

foreach ($file in $mdFiles) {
  $content = Get-Content -LiteralPath $file.FullName -ErrorAction Stop
  for ($i = 0; $i -lt $content.Count; $i++) {
    $line = $content[$i]
    $hm = $headingRegex.Match($line)
    if (-not $hm.Success) { continue }

    $text = $hm.Groups[2].Value.Trim()
    if ([string]::IsNullOrWhiteSpace($text)) { continue }

    $key = $text.ToLowerInvariant()
    if (-not $headingMap.ContainsKey($key)) {
      $headingMap[$key] = New-Object System.Collections.Generic.List[object]
    }

    $headingMap[$key].Add([pscustomobject]@{ File=$file.FullName; Line=($i+1); Heading=$text })
  }
}

$dupes = @($headingMap.GetEnumerator() | Where-Object { $_.Value.Count -gt 3 } | Sort-Object { $_.Value.Count } -Descending)

Write-Host "" 
Write-Host "Check: Heavily duplicated headings (appears in >3 files)" 
if ($dupes.Count -eq 0) {
  Write-Host "- OK: none found" 
} else {
  Write-Host "- INFO: found $($dupes.Count) repeated heading(s)" 
  $dupes | Select-Object -First 10 | ForEach-Object {
    Write-Host ("  - '{0}' appears {1} times" -f $_.Value[0].Heading, $_.Value.Count)
  }
  if ($dupes.Count -gt 10) { Write-Host "  - ... (truncated)" }
}

Write-Host "" 
Write-Host "Quick-HealthCheck complete." 
