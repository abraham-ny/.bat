@echo off
rem Ensure curl and jq are installed and available
where curl >nul 2>nul
if %errorlevel% neq 0 (
    echo curl is not installed. Please install curl.
    pause
    exit /b
)

where jq >nul 2>nul
if %errorlevel% neq 0 (
    echo jq is not installed. Please install jq.
    pause
    exit /b
)

rem GitHub repository details
set USER=abraham-ny
set REPO=file-studio

rem Fetching releases from GitHub API
curl -s https://api.github.com/repos/%USER%/%REPO%/releases | jq -r ".[] | \"Tag: \(.tag_name)\nName: \(.name)\nDate: \(.published_at)\n\""

rem End of the script
pause
