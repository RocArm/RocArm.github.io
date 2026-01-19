$lines = Get-Content "c:\WorkLocal\Website\index.html"
$output = @()
$currentSection = ""
$headerLines = @()
$pubLines = @()
$wpMainLines = @()
$snLines = @()
$linksLines = @()
$footerLines = @()
$collectingWP = $false
$collectingShortNotes = $false

for ($i = 0; $i -lt $lines.Count; $i++) {
    $line = $lines[$i]
    
    if ($line -match '<!-- Working Papers Section -->') {
        $currentSection = "wp"
        $wpMainLines += ""
        $wpMainLines += "    <!-- Working Papers Section -->"
        continue
    }
    
    if ($line -match '<section id="working-papers"') {
        $currentSection = "wp"
        $wpMainLines += $line
        continue
    }
    
    if ($currentSection -eq "wp" -and $line -match '<!-- Short Notes -->') {
        $currentSection = "sn"
        $wpMainLines += "        </div>"
        $wpMainLines += "    </section>"
        $snLines += ""
        $snLines += "    <!-- Short Notes Section -->"
        $snLines += '    <section id="short-notes" class="py-16 bg-white">'
        $snLines += '        <div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">'
        $snLines += '            <h2 class="text-3xl font-bold text-gray-900 mb-8">Short Notes</h2>'
        continue
    }
    
    if ($line -match '<!-- Publications Section -->') {
        $currentSection = "pub"
        $pubLines += ""
        $pubLines += "    <!-- Publications Section -->"
        continue
    }
    
    if ($line -match '<section id="publications"') {
        $currentSection = "pub"
        $pubLines += $line
        continue
    }
    
    if ($line -match '<!-- Links Section -->') {
        $currentSection = "links"
        $linksLines += ""
        $linksLines += $line
        continue
    }
    
    if ($line -match '<!-- Footer -->') {
        $currentSection = "footer"
        $footerLines += ""
        $footerLines += $line
        continue
    }
    
    switch ($currentSection) {
        "wp" { $wpMainLines += $line }
        "sn" { $snLines += $line }
        "pub" { $pubLines += $line }
        "links" { $linksLines += $line }
        "footer" { $footerLines += $line }
        default { $headerLines += $line }
    }
}

# Build the output in the correct order
$output += $headerLines
$output += $pubLines
$output += $wpMainLines
$output += $snLines
$output += $linksLines
$output += $footerLines

# Write the reorganized content
$output | Set-Content "c:\WorkLocal\Website\index.html"
Write-Output "File reorganized successfully!"
