# Minimal Mode for Windows

A PowerShell script that runs Windows with only essential processes and services, reducing background activity for optimized performance.

## Table of Contents

- [Description](#description)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)
- [Disclaimer](#disclaimer)

## Description

This PowerShell script stops non-essential services and terminates unnecessary background processes to allow Windows to run in a "Minimal Mode." This is particularly useful for high-performance tasks like gaming or benchmarking.

## Features

- Stops Windows services that are not required for most applications.
- Terminates processes that consume resources but aren't critical for system operations.
- Improves system performance by reducing background activity.

## Requirements

- Windows 10 or later
- PowerShell with administrator privileges

## Installation

1. Download the script:
   ```bash
   git clone https://github.com/amahmood561/MinimalMode-Windows.git
   ```
2. Navigate to the directory:
   ```bash
   cd MinimalMode-Windows
   ```

## Usage

1. Open PowerShell as an administrator.
2. Run the script:
   ```powershell
   .\MinimalMode.ps1
   ```

The script will output messages for each service stopped and process terminated, confirming that Minimal Mode has been activated.

## Customization

- **Services**: You can add or remove services from the `$servicesToStop` array in `MinimalMode.ps1` to control which services are stopped.
- **Processes**: Modify the `$processesToTerminate` array to adjust which processes will be terminated.

> **Note**: Be careful when customizing, as disabling or stopping essential services may impact system stability.

## Disclaimer

Use this script at your own risk. Stopping services and terminating processes can interfere with applications you may need. Always save your work and reboot after using Minimal Mode to restore default settings.


### Additional Notes

- Make sure to replace `https://github.com/amahmood561/MinimalMode-Windows.git` with your actual GitHub repository URL.
- Add any additional service or process descriptions if users need more context. 

This README will help other users understand and safely use your script.