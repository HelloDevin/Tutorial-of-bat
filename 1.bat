@echo off 
REM 这个命令就是注释
REM echo命令的作用有两个,一个是在CMD上回显一行内容.如:echo "欢迎来到非常BAT!";还一个是关闭命令的回显:echo off
REM echo off的作用就相当于在每条命令前面加一个@符号,这样所有的命令将只会显示结果不显示命令.
REM 我们在echo off这命令前加一个@符号是为了不让echo off这条命令本身显示出来,让批处理更完美!
echo "Welcom to BAT!"
echo Hello World

echo "888"
call 2.bat
REM CALL命令可以在批处理执行过程中调用另一个批处理，当另一个批处理执行完后，再继续执行原来的批处理
echo "999"

dir D:
if errorlevel 1 goto 1
if errorlevel 0 goto 0
:0
echo success
goto exit
:1
echo failed
goto exit
:exit

if 1==2 goto no
echo not equal
goto exit2
:no
echo equal
goto exit2
:exit2
REM 这里是出口


if not exist 2.bat goto 3
echo exist 2.bat
goto exit3
:3
echo not exist 2.bat
goto exit3
:exit3
pause