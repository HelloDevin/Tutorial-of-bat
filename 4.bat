@echo off
copy 1.txt d:\
echo %0>>2.txt
if errorlevel 0 goto 0
if errorlevel 1 goto 1
:: ע��
:0
echo �ɹ�
goto exit
:1
echo ʧ��
goto exit
:exit
for /d %%i in (window?) do @echo %%i
pause