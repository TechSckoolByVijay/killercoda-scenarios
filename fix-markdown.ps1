# Fix all markdown wrapper issues in step files
$stepFiles = Get-ChildItem -Recurse -Include "step*.md" -Path "s01*", "s02*"

foreach ($file in $stepFiles) {
    Write-Host "Processing: $($file.Name)"
    
    # Read the entire file content as a single string
    $content = Get-Content $file.FullName -Raw
    
    # Check if file starts with markdown wrapper
    if ($content -match '^````markdown\s*\r?\n') {
        Write-Host "  - Removing markdown wrapper from $($file.Name)"
        
        # Remove the opening ````markdown
        $content = $content -replace '^````markdown\s*\r?\n', ''
        
        # Remove the closing ````
        $content = $content -replace '\r?\n````\s*$', ''
        
        # Trim any extra whitespace at the end
        $content = $content.TrimEnd()
        
        # Write back to file
        Set-Content -Path $file.FullName -Value $content -NoNewline
        
        Write-Host "  - Fixed: $($file.Name)" -ForegroundColor Green
    } else {
        Write-Host "  - No wrapper found in $($file.Name)" -ForegroundColor Yellow
    }
}

Write-Host "All files processed!" -ForegroundColor Green