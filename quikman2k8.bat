@echo on
pushd %~dp0

ca65 --cpu 6502 --listing quikman2k8.s
ld65 -C vic20.cfg -o quikman2k8.prg quikman2k8.o

cd ..
REM choice
REM set CHOICE=%ERRORLEVEL%
REM if %CHOICE% EQU  1  xvic -memory none -ntsc -sound -joydev1 2 -autostart quikman2k8.prg
PAUSE
popd
