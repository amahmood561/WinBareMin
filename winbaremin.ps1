# Save this script as MinimalMode.ps1 and run it with administrator privileges.

# List of unnecessary services to stop - adjust based on your needs
$servicesToStop = @(
    "WSearch",          # Windows Search
    "SysMain",          # Superfetch
    "Spooler",          # Print Spooler
    "Fax",              # Fax Service
    "lfsvc",            # Geolocation Service
    "DiagTrack",        # Connected User Experiences and Telemetry
    "XboxGipSvc",       # Xbox Game Monitoring
    "XblGameSave",      # Xbox Game Save
    "MapsBroker",       # Downloaded Maps Manager
    "OneSyncSvc",       # Sync Host
    "BthHFSrv",         # Bluetooth Support
    "BluetoothUserService"  # Bluetooth User Support
)

# Stop the unnecessary services
foreach ($service in $servicesToStop) {
    if ((Get-Service -Name $service -ErrorAction SilentlyContinue).Status -eq 'Running') {
        Stop-Service -Name $service -Force
        Write-Output "Stopped service: $service"
    }
}

# List of unnecessary processes to terminate - adjust based on your needs
$processesToTerminate = @(
    "YourPhone.exe",    # Your Phone app
    "OneDrive.exe",     # OneDrive
    "MicrosoftEdgeUpdate.exe", # Edge Auto Update
    "Teams.exe",        # Microsoft Teams
    "Spotify.exe",      # Spotify
    "Cortana.exe",      # Cortana
    "BackgroundTransferHost.exe", # Background tasks for Windows Update
    "SearchUI.exe"      # Windows Search UI
)

# Terminate the unnecessary processes
foreach ($process in $processesToTerminate) {
    Get-Process -Name $process -ErrorAction SilentlyContinue | ForEach-Object { 
        $_.Kill() 
        Write-Output "Terminated process: $process"
    }
}

Write-Output "Minimal mode activated. Non-essential services and processes have been stopped."
