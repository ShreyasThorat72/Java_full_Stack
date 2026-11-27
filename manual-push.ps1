
Write-Host "Preparing Java code for GitHub..."

git add -A

git diff --cached --quiet

if ($LASTEXITCODE -eq 0) {
    Write-Host "No new changes to upload."
    exit
}

$message = "Java Practice: $(Get-Date -Format 'dd-MM-yyyy HH:mm')"

git commit -m "$message"

if ($LASTEXITCODE -ne 0) {
    Write-Host "Commit failed."
    exit
}

git push

if ($LASTEXITCODE -eq 0) {
    Write-Host "SUCCESS! Your code is on GitHub."
}
else {
    Write-Host "Push failed. Your commit is saved locally."
}
