@echo off
title Guess the Number Game

:: Game Initialization
cls
echo Welcome to the "Guess the Number" game!
echo.
echo I have selected a number between 1 and 100.
echo You have 10 attempts to guess it correctly.
echo Good luck!
echo.

:: Random number generation
set /a "target=%random% %% 100 + 1"
set /a "attempts=10"

:gameLoop
:: Show the remaining attempts
echo You have %attempts% attempts remaining.
set /p guess=Enter your guess: 

:: Check if the guess is valid
if not "%guess%"=="" (
    if "%guess%" geq "1" if "%guess%" leq "100" (
        :: Decrease attempts
        set /a "attempts-=1"

        :: Check if the guess is correct
        if "%guess%"=="%target%" (
            echo Congratulations! You guessed the number %target% correctly!
            goto endGame
        )

        :: Give feedback if the guess is too high or too low
        if "%guess%" lss "%target%" (
            echo Too low! Try again.
        ) else (
            echo Too high! Try again.
        )
    ) else (
        echo Please enter a valid number between 1 and 100.
    )
) else (
    echo Invalid input. Please enter a number between 1 and 100.
)

:: Check if the player has run out of attempts
if %attempts% lss 1 (
    echo Sorry, you've run out of attempts! The correct number was %target%.
    goto endGame
)

goto gameLoop

:endGame
echo.
echo Thank you for playing the "Guess the Number" game!
pause
exit
