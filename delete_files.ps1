## marcos.arajo@labnet.nce.ufrj.br
## 2024-05-24
## PowerShell

param (
    [Parameter(Mandatory=$true)]
    [string[]]$Folders,
    
    [Parameter(Mandatory=$true)]
    [string]$Extension,
    
    [Parameter(Mandatory=$true)]
    [string]$LogFilePath
)

# Initialize the log file
"Log Start: $(Get-Date)" | Out-File -FilePath $LogFilePath -Force

foreach ($folder in $Folders) {
    if (Test-Path $folder) {
        Get-ChildItem -Path $folder -Recurse -Filter *$Extension | ForEach-Object {
            try {
                Remove-Item -Path $_.FullName -Force
                $message = "Deleted file: $($_.FullName)"
                Write-Host $message
                $message | Out-File -FilePath $LogFilePath -Append
            } catch {
                $message = "Failed to delete file: $($_.FullName)"
                Write-Host $message
                $message | Out-File -FilePath $LogFilePath -Append
            }
        }
    } else {
        $message = "The folder $folder does not exist."
        Write-Host $message
        $message | Out-File -FilePath $LogFilePath -Append
    }
}

"Log End: $(Get-Date)" | Out-File -FilePath $LogFilePath -Append
