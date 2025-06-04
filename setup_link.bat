@echo off
setlocal

:: Percorso della directory corrente
set "BASEDIR=%~dp0"

:: Collegamento da modificare o creare
set "LNK=%BASEDIR%\Dice.lnk"

:: Percorso relativo all'icona
set "REL_ICON=dice.ico"
set "ICON=%BASEDIR%%REL_ICON%"

:: Crea VBScript temporaneo per modificare il collegamento NON SO USARE VBSCRIPT MA FUNZIONA SI AHAHAHAH
> "%temp%\modifica_icon.vbs" echo Set oWS = CreateObject("WScript.Shell")
>> "%temp%\modifica_icon.vbs" echo Set lnk = oWS.CreateShortcut("%LNK%")
>> "%temp%\modifica_icon.vbs" echo lnk.TargetPath = "%BASEDIR%dice.py"
>> "%temp%\modifica_icon.vbs" echo lnk.WorkingDirectory = "%BASEDIR%"
>> "%temp%\modifica_icon.vbs" echo lnk.IconLocation = "%ICON%"
>> "%temp%\modifica_icon.vbs" echo lnk.Save

:: Esegui lo script
cscript //nologo "%temp%\modifica_icon.vbs"

:: Togli lo script e finisci il programma :D
del "%temp%\modifica_icon.vbs"
endlocal