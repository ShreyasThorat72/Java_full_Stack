Write-Host "JAVA GITHUB AUTO PUSH STARTED"

while ($true) {

    $status1 = (git status --porcelain | Out-String).Trim()

    if ($status1) {

        Write-Host "Changes detected. Waiting 20 seconds..."

        Start-Sleep -Seconds 20

        $status2 = (git status --porcelain | Out-String).Trim()

        if ($status1 -eq $status2 -and $status2) {

            git add -A

            git diff --cached --quiet

            if ($LASTEXITCODE -eq 1) {

                $message = "Java Update: $(Get-Date -Format 'dd-MM-yyyy HH:mm:ss')"

                git commit -m "$message"

            }

            git push

            if ($LASTEXITCODE -eq 0) {
                Write-Host "SUCCESS: Uploaded to GitHub!"
            }
            else {
                Write-Host "Upload failed. Will retry."
            }
        }
    }

    Start-Sleep -Seconds 5
}