<#
.SYNOPSIS
  Updates Locations nav dropdown to include all 12 cities (was 6)
  and fixes "Also Serving" href links on all city pages.
#>

$allPages = @(
  "index.html", "about.html", "services.html", "wood-fencing.html",
  "contact.html", "gallery.html", "madison-al.html",
  "huntsville.html", "athens.html", "decatur.html", "harvest.html",
  "hazel-green.html", "owens-cross-roads.html", "hampton-cove.html",
  "meridianville.html", "new-market.html", "hartselle.html", "florence.html"
)

# The 12-city dropdown HTML
$newDropdown = @'
        <div class="relative group">
            <a href="locations.html" class="hover:text-burnt-orange transition">Locations <i class="fa-solid fa-chevron-down text-xs ml-1"></i></a>
            <div class="absolute top-full left-1/2 -translate-x-1/2 mt-2 bg-white text-navy rounded-lg shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 min-w-[180px] z-50 py-2">
              <a href="huntsville.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Huntsville</a>
              <a href="madison-al.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Madison</a>
              <a href="athens.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Athens</a>
              <a href="decatur.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Decatur</a>
              <a href="harvest.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Harvest</a>
              <a href="hazel-green.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Hazel Green</a>
              <a href="owens-cross-roads.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Owens Cross Roads</a>
              <a href="hampton-cove.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Hampton Cove</a>
              <a href="meridianville.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Meridianville</a>
              <a href="new-market.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">New Market</a>
              <a href="hartselle.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Hartselle</a>
              <a href="florence.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Florence</a>
            </div>
          </div>
'@

# Old 6-city dropdown pattern (multiline, flexible whitespace)
$oldPattern = '<div class="relative group">\s*<a href="#" class="hover:text-burnt-orange transition">Locations <i class="fa-solid fa-chevron-down text-xs ml-1"></i></a>\s*<div class="absolute top-full left-1/2 -translate-x-1/2 mt-2 bg-white text-navy rounded-lg shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 min-w-\[180px\] z-50 py-2">\s*<a href="#" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Huntsville</a>\s*<a href="madison-al\.html" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Madison</a>\s*<a href="#" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Athens</a>\s*<a href="#" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Decatur</a>\s*<a href="#" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Harvest</a>\s*<a href="#" class="block px-4 py-2 hover:bg-soft-gray hover:text-burnt-orange transition whitespace-nowrap">Hazel Green</a>\s*</div>\s*</div>'

$count = 0
foreach ($file in $allPages) {
  $path = "D:\Clients\Running\fencing site\$file"
  if (-not (Test-Path $path)) {
    Write-Host "Skipping (not found): $file"
    continue
  }
  
  $content = Get-Content -Path $path -Raw
  
  # Replace old 6-city dropdown with new 12-city dropdown
  if ($content -match $oldPattern) {
    $content = $content -replace $oldPattern, $newDropdown
    Set-Content -Path $path -Value $content -NoNewline
    $count++
    Write-Host "Updated nav: $file"
  } else {
    Write-Host "No old nav pattern found in: $file"
  }
}

Write-Host "`nUpdated $count files with new 12-city nav dropdown."

# Also update the "Also Serving" sections on city pages
$alsoServingPages = @(
  "madison-al.html", "huntsville.html", "athens.html", "decatur.html",
  "harvest.html", "hazel-green.html", "owens-cross-roads.html",
  "hampton-cove.html", "meridianville.html", "new-market.html",
  "hartselle.html", "florence.html"
)

$alsoPattern = 'class="bg-soft-gray hover:bg-burnt-orange hover:text-white rounded-lg px-4 py-2\.5 text-sm font-semibold transition">Huntsville'
$alsoReplacement = 'class="bg-soft-gray hover:bg-burnt-orange hover:text-white rounded-lg px-4 py-2.5 text-sm font-semibold transition" href="huntsville.html">Huntsville'

$cityLinks = @(
  @{Name="Huntsville"; Href="huntsville.html"}
  @{Name="Madison"; Href="madison-al.html"}
  @{Name="Athens"; Href="athens.html"}
  @{Name="Decatur"; Href="decatur.html"}
  @{Name="Harvest"; Href="harvest.html"}
  @{Name="Hazel Green"; Href="hazel-green.html"}
  @{Name="Owens Cross Roads"; Href="owens-cross-roads.html"}
  @{Name="Hampton Cove"; Href="hampton-cove.html"}
  @{Name="Meridianville"; Href="meridianville.html"}
  @{Name="New Market"; Href="new-market.html"}
  @{Name="Hartselle"; Href="hartselle.html"}
  @{Name="Florence"; Href="florence.html"}
)

$alsoCount = 0
foreach ($file in $alsoServingPages) {
  $path = "D:\Clients\Running\fencing site\$file"
  $content = Get-Content -Path $path -Raw
  $changed = $false

  foreach ($city in $cityLinks) {
    $oldLink = 'class="bg-soft-gray hover:bg-burnt-orange hover:text-white rounded-lg px-4 py-2\.5 text-sm font-semibold transition">' + $city.Name
    $newLink = 'class="bg-soft-gray hover:bg-burnt-orange hover:text-white rounded-lg px-4 py-2.5 text-sm font-semibold transition" href="' + $city.Href + '">' + $city.Name
    if ($content -match $oldLink) {
      $content = $content -replace $oldLink, $newLink
      $changed = $true
    }
  }

  if ($changed) {
    Set-Content -Path $path -Value $content -NoNewline
    $alsoCount++
    Write-Host "Updated 'Also Serving' section: $file"
  }
}

Write-Host "`nUpdated 'Also Serving' sections on $alsoCount pages."
