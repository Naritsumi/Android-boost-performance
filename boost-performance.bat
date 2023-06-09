@echo off

:menu
echo Choose an option:
echo 1. Calculated input
echo 2. Manual input
echo 3. Exit
set /p choice=Enter your choice: 

if %choice% equ 1 (
    goto calculated_input
) else if %choice% equ 2 (
    goto manual_input
) else if %choice% equ 3 (    
    exit /b 1
) else (
    echo Invalid choice.
    goto menu
)

:calculated_input
adb shell dumpsys display
if %errorlevel% neq 0 (
    echo Error: Unable to run adb shell dumpsys display. Can't continue.
    pause
    exit /b 1
)

for /f "tokens=2 delims=:" %%a in ('adb shell wm size') do set size=%%a
for /f "tokens=1,2 delims=x" %%a in ("%size%") do (
    set /a width=%%a
    set /a height=%%b

)
for /f "tokens=2 delims=: " %%a in ('adb shell wm density') do set density=%%a

echo height: %height% px
echo width: %width% px
echo density: %density% ppi

set /a lower_height=%height%/2
set /a lower_width=%width%/2
set /a lower_density=round(sqrt(%lower_width%^2 + %lower_height%^2) / (%screensize% * 0.03937), 0)

echo Lower height: %lower_height% px
echo Lower width: %lower_width% px
echo Lower density: %lower_density% ppi

pause

adb shell wm size %lower_height%x%lower_width%
if %errorlevel% neq 0 (
    echo Error: Unable to run adb shell wm size %lower_height%x%lower_width%.
    pause
    exit /b 1
)

adb shell wm density %lower_density%
if %errorlevel% neq 0 (
    echo Error: Unable to run adb shell wm density %lower_density%.
)

goto menu

:manual_input
adb shell dumpsys display
if %errorlevel% neq 0 (
    echo Error: Unable to run adb shell dumpsys display. Can't continue.
    pause
    exit /b 1
)

set /p height=Enter the new height: 
set /p width=Enter the new width: 
set /p density=Enter the new density: 

echo height: %height% px
echo width: %width% px
echo density: %density% ppi

pause

adb shell wm size %height%x%width%
if %errorlevel% neq 0 (
    echo Error: Unable to run adb shell wm size %height%x%width%.
    pause
    exit /b 1
)

adb shell wm density %density%
if %errorlevel% neq 0 (
    echo Error: Unable to run adb shell wm density %density%.
)

goto menu
