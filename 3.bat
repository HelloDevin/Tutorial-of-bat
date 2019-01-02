@echo off
dir
cd /d d:
dir
cd /d C:
cd Test
rem %1~%9是批处理参数，也称形参，%0是指批处理文件的本身
echo param[0]=%0
echo param[1]=%1
echo param[2]=%2
echo param[3]=%3
echo param[4]=%4
echo %0>>2.txt
pause