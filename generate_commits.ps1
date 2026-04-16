$targetFile = "src\simplestorage.sol"

for ($i = 1; $i -le 200; $i++) {
    # Generate a random string
    $randomStr = -join ((65..90) + (97..122) | Get-Random -Count 10 | % { [char]$_ })
    
    # Append a comment to the file
    Add-Content -Path $targetFile -Value "// Random commit comment $i - $randomStr"
    
    # Add and commit
    git add $targetFile
    git commit -m "chore: random commit $i on simplestorage.sol"
    
    Write-Host "Created commit $i"
}

Write-Host "Done! 200 commits have been created."
