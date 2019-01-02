@echo off 
REM 这个命令就是注释
echo "Welcom to BAT!"
echo Hello World

dir *.txt>1.txt
dir *.txt>>1.txt
REM >和>> 都是将运行的回显结果传递到后面的范围  区别: > 覆盖  >> 追加
cd /d
dir /b
cd SDKTest
echo %cd%
rem %cd%当前目录的路径
echo %~dp0
rem %~dp0该批处理文件所在的路径
set path=%~dp0
rem 声明一个变量 引用时 %变量名%
echo %path%

echo %path%>>2.txt
dir Z: & dir C: 
dir Z: && dir C: 
rem &前面的命令失败后不影响后面的执行 &&前面的失败后 后面的也不会执行
dir
cd /d
dir
pause