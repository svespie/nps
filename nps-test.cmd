@echo off
cls
echo -------------------
echo [ testing nps.exe ]
echo -------------------
echo.
echo.
echo [help argument]
echo.
set argument=-help
echo $ nps.exe %argument%
nps.exe %argument%
echo.
echo [single command]
echo.
set argument=Get-Date
echo $ nps.exe %argument%
nps.exe %argument%
echo.
echo [multiple commands]
echo.
set argument="Get-Date; Write-Output 'Ohai there'"
echo $ nps.exe %argument%
nps.exe %argument%
echo.
echo [encode]
set argument=-encode "& Get-Date; Write-Output 'Ohai there'"
echo $ nps.exe %argument%
nps.exe %argument%
echo.
echo [decode]
set argument=-decode JgAgAEcAZQB0AC0ARABhAHQAZQA7ACAAVwByAGkAdABlAC0ATwB1AHQAcAB1AHQAIAAnAE8AaABhAGkAIAB0AGgAZQByAGUAJwA=
echo $ nps.exe %argument%
nps.exe %argument%
echo.
echo [encoded command (1)]
set argument=-encodedcommand JgAgAEcAZQB0AC0ARABhAHQAZQA7ACAAVwByAGkAdABlAC0ATwB1AHQAcAB1AHQAIAAnAE8AaABhAGkAIAB0AGgAZQByAGUAJwA=
echo $ nps.exe %argument%
nps.exe %argument%
echo.
echo [encoded command (2)]
set argument=-enc JgAgAEcAZQB0AC0ARABhAHQAZQA7ACAAVwByAGkAdABlAC0ATwB1AHQAcAB1AHQAIAAnAE8AaABhAGkAIAB0AGgAZQByAGUAJwA=
echo $ nps.exe %argument%
nps.exe %argument%
echo.