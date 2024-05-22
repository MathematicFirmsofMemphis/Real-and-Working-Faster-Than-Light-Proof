@echo off
setlocal EnableDelayedExpansion

REM Define initial speed and frame rate
set speed=1000
set /a frame_rate=60

REM Main loop for frame calculation
:calculate_frames
cls
echo Total Speed: !speed! mph
echo Frame Rate: !frame_rate! frames per second

REM Calculate speed and distance for each frame
set total_speed=0
set total_distance=0
for /l %%i in (1,1,!frame_rate!) do (
    set /a total_speed+=speed
    set /a total_distance+=total_speed
    echo Frame %%i: !total_speed! mph - Total Distance: !total_distance! mph
)

REM Wait for user to close the Command Prompt window
timeout /t 1 /nobreak >nul
goto calculate_frames
