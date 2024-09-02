@REM all credits goes to abhimonk
@REM script provided by https://itch.io/profile/abhimonk via comment @ https://itch.io/post/10552214 itch page: https://abhimonk.itch.io/ x page: https://x.com/abhisundu

@REM this is a script for Windows:
@REM to use this script you need to install love.js 
@REM npm i love.js
@REM https://github.com/Davidobot/love.js
@REM save this file as a .bat script and place it in your project folder, then it will create a build folder with your game
@REM install 7 zip on your computer
@REM modify folders/files in the part "....zipping up all files into %buildName%.zip"
@REM upload your .zip file to itch, and mark is file to be played as html, and then add "x" in SharedBufferArraryExport

@echo off
Rem This is the folder that contains all different build versions
Rem The builds folder is defined as "Builds". If it doesn't exist, this will create it.
set buildFolder=Builds
Rem This is the actual folder that you'd zip and distribute
echo Enter the name of this build:
set /p buildName=
echo %buildFolder%
echo %buildName%

if not exist %buildFolder% (
    echo adding build folder %buildFolder%
    mkdir %buildFolder%
)
if exist %buildFolder%\%buildName% (
    echo old build folder already exists
    echo removing old folder
    rmdir /s /q %buildFolder%\%buildName%
)
mkdir %buildFolder%\%buildName%

@REM this you need to include all your folders from your repo and all files in the root in the below lines. Forget .gitignore, .vscode, .readme or similar files irrelevant to love
echo zipping up all files into %buildName%.zip
"C:\Program Files\7-Zip\7z.exe" a %buildFolder%/%buildName%/%buildName%.zip "fonts" "sfx" "sprites" "UtillityFunctions" "collision.lua" "conf.lua" "enemy.lua" "event.lua" "gameManager.lua" "inputManager.lua" "maid64.lua" "maid64.png" "main.lua" "player.lua" "sfxManager.lua" "weapon.lua"

echo renaming zip file to love file
rename %buildFolder%\%buildName%\%buildName%.zip %buildName%.love

@REM Need to pick a much bigger size for the game than what is reported by the zip file size
@REM for example, if the file size was 55426989 bytes, you should pick something like 70000000
Rem compute the file size first
for %%I in ("%buildFolder%/%buildName%/%buildName%.love") do set numBytes=%%~zI
echo zip file size is %numBytes%

echo Using a value of 70000000 (7 with 7 zeros) for the bytes required to preload the game on the web.
@REM If you get cryptic errors and it gets stuck at 1/2 when loading the game, try picking a much bigger value.
set numBytes=70000000

echo building with love.js
call npx love.js.cmd -c -m %numBytes% %buildFolder%/%buildName%/%buildName%.love %buildFolder%/%buildName%/%buildName%

echo removing stale love file
del /q %buildFolder%\%buildName%\%buildName%.love

echo creating a zip file for itch.io right under the build folder
cd %buildFolder%
cd %buildName%
"C:\Program Files\7-Zip\7z.exe" a %buildName%.zip "%buildName%\*"
cd ..
cd ..

echo finished build. Your project is located here: C:\Users\Larsw\Desktop\git\doveBlaster4000_love2d
