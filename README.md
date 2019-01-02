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
看看效果，敲击这个命令

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

特殊符号:

1.  @
2.  >
3.  >>
4.  |
5.  ^
6.  &
7.  &&
8.  ""
9.  ,
10. ;
一、 @

这个字符在批处理中的意思是关闭当前行的回显。我们从前几课知道
ECHO OFF可以关闭掉整个批处理命令的回显，但不能关掉ECHO OFF这个命令，现在我们在ECHO OFF这个命令前加个@，就可以达到所有命令均不回显的要求

1.bat
```
echo off
dir d:/
```
2.bat
```
@echo off
dir d:/
```
二、 >

这个字符的意思是传递并且覆盖，他所起的作用是将运行的回显结果传递到后面的范围（后边可以是文件，也可以是默认的系统控

制台）

比如：

文件1.txt 的文件内容是：

1+1

使用命令：dir *.txt >1.txt

这时候1.txt 内容如下

驱动器 C 中的卷没有标签。
卷的序列号是 3827-1BDD

C:/ 的目录

2004-05-25  00:57        17,755,907 Log.txt
2004-05-26  15:21                3 1.txt
2004-05-26  15:21                0 2.txt
              3 个文件    17,755,910 字节
              0 个目录    339,111,936 可用字节


三、>>

这个符号的作用和>有点类似，但他们的区别是>>是传递并在文件的末尾追加，而>是覆盖

用法同上

同样拿1.txt做例子

内容是1+1

使用命令：dir *.txt >>1.txt

咱们来看看显示的结果如何


四、|

这是一个管道传输命令，意思是将上一命令执行的结果传到下一个命令去处理

例如：

dir c:/|find "txt"

以上命令是：查找C：/所有，并发现TXT字符串。
FIND的功能请用 FIND /? 自行查看

在不使format的自动格式化参数时，我是这样来自动格式化A盘的

echo y|format a: /s /q /v:system

用过format的都知道，再格盘时要输入y来确认是否格盘，这个命令前加上echo y并用|字符来将echo y的结果传给format命令

从而达到自动输入y的目的

（这条命令有危害性，测试时请慎重）


五、^

^是对特殊符号"<",">","&"的前导字符，在命令中他将以上3个符号的特殊功能去掉，仅仅只把他们当成符号而不使用他们的特殊意

义。

比如

echo test ^>1.txt

结果则是

test ^>1.txt
他没有追加在1.txt里，呵呵。只是显示了出来


六、 &

这个符号允许在一行中使用2个以上不同的命令，当第一个命令执行失败了，也不影响后边的命令执行。

比如：

dir z:/ & dir y:/ & dir c:/

以上命令会连续显示z,y,c盘的内容，不理会该盘是否存在


七、 &&

这个命令和上边的类似，但区别是，第一个命令失败时，后边的命令也不会执行


dir z:/ && dir y:/ && dir c:/


八、""

双引号允许在字符串中包含空格，进入一个特殊目录可以用如下方法
```
cd "program files"
cd progra~1
cd pro*
```
以上三种方法都可以进入program files这个目录


九、,

逗号相当于空格，在某些情况下“,”可以用来当做空格使

比如
```
dir,c:/
```
十、；

分号，当命令相同时，可以将不同目标用；来隔离，但执行效果不变，如执行过程中发生错误，则只返回错误报告，但程序还是会

执行。

比如：
```
dir c:/;d:/e:/;f:/
```
以上命令相当于
```
dir c:/
dir d:/
dir e:/
dir f:/
```