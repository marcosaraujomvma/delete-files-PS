# Delete-files-PS
* Script to delete especific extensions files

# Run the Script
* Open PowerShell in Windows and navigate to the directory where the delete_files.ps1 file was saved. Run the script using the command:

i.e. 

```PoweShell

.\delete_files.ps1 -Folders "C:\Documents" -Extension ".txt" -LogFilePath "C:\log\delete_files_log.txt"

```
# Notes
* You can add multiple folders by separating them with commas:

```PoweShell
.\delete_files.ps1 -Folders "C:\Documents", "C:\OtherDocuments" -Extension ".txt" -LogFilePath "C:\log\delete_files_log.txt"
```

* Make sure you have permission to delete files in the specified folders and to write to the log file location.

* The log file specified by the -LogFilePath parameter will contain a record of all deleted files and any errors encountered.

# Additional Notes

* To run PowerShell with sufficient permissions to delete files, you might need to run PowerShell as an administrator.

* If PowerShell is blocking script execution, you can temporarily (or permanently) change the execution policy using the following command (run in PowerShell with administrator permissions):

```PoweShell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

* This command will allow the script to run without restrictions for the current PowerShell session.
