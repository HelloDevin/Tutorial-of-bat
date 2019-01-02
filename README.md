# [批处理编程教程](https://blog.csdn.net/icejiujiu/article/details/4778334)
#### "批处理".顾名思义,批处理就是把一批或者说是一条条命令放在一个文本里,然后批量执行，执行这一批命令的文件的扩展名是BAT或者CMD,把任何一批命令放入在有这样扩展名的文件里,执行时里面的命令就会一条条的执行完,当然我们还可以在其中加入一些逻辑判断的语句,让里面的命令在满足一定条件时执行指定的命令.

#### @符号的作用即关闭执行命令的显示，只显示命令的结果;
```
@echo 你好
echo 你好
@pause
```
#### ECHO:
1. 在CMD窗口显示一行内容;
2. echo off相当于在每条命令前面加一个@符号，这样所有的命令将只会显示结果不显示命令；
#### REM:注释命令 (例:REM 这个命令就是注释)
#### GOTO 跳转
```
例：
:lable
REM 上面就是名为LABEL的标号
DIR C:
DIR D:
GOTO lable
REM 以上程序跳转标号LABEL处继续执行
```
#### CALL：CALL命令可以在批处理执行过程中调用另一个批处理，当另一个批处理执行完后，再继续执行原来的批处理
---
#### PAUSE：暂停
---
#### IF 条件判断
IF 条件判断语句，语法格式如下：
```
IF [NOT] ERRORLEVEL number command
IF [NOT] string1==string2 command
IF [NOT] EXIST filename command
```
解释下：
[NOT]：将返回结果取反值，就是“如果没有”的意思

ERRORLEVEL：
是命令执行完成后返回的退出值

Number:
退出值的数字取值范围0~255，判断时值的排列顺序应该由大到小。返回的值大于等于指定的值时，条件成立

string1==string2：
string1和string2都为字符的数据，英文内字符的大小写将看作不同，这个条件中的等于号必须是两个（绝对相等的意思）
条件相等后即执行后面的command

EXIST filename:
为文件或目录存在的意思

IF ERRORLEVEL这个句子必须放在某一个命令的后面，执行命令后由IF ERRORLEVEL 来判断命令的返回值。

例：
1. IF [NOT] ERRORLEVEL number command
检测命令执行完后的返回值做出判断
```
echo off
dir z:
rem 如果退出代码为1(不成功）就跳至标题1处执行
IF ERRORLEVEL 1 goto 1
REM 如果退出代码为0（成功）就跳至标题0处执行
IF ERRORLEVEL 0 goto 0
:0
echo 命令执行成功！
Rem 程序执行完毕跳至标题exit处退出
goto exit
:1
echo 命令执行失败！
Rem 程序执行完毕跳至标题exit处退出
goto exit
:exit
Rem 这里是程序的出口
```
2. IF string1==string2 command
检测当前变量的值做出判断
```
ECHO OFF
IF 1==2 goto no
Echo 变量相等!
goto exit
:no
echo 变量不相等
goto exit
:exit
```
看看效果，敲击这个命令1.bat 数字

3. IF [NOT] EXIST filename command
发现特定的文件做出判断 
```
echo off
IF not EXIST autoexec.bat goto 1
echo 文件存在成功！
goto exit
:1
echo 文件不存在失败！
goto exit
:exit
```