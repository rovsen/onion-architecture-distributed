powershell.exe -NoProfile -ExecutionPolicy unrestricted -Command "& {Import-Module '.\psakev4\psake.psm1'; invoke-psake .\default.ps1 %1 -parameters @{"version"="'%2'"}; if ($lastexitcode -and $lastexitcode -ne 0) {write-host "ERROR: $lastexitcode" -fore RED; exit $lastexitcode} }" 