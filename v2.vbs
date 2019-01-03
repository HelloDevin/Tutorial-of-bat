dim a,b,ctr
ctr=0
a=12 
b=13 
do
if a<b then 
msgbox("A小于B") 
else
msgbox("B大于A") 
end if 
msgbox("继续执行")
ctr=ctr+1
if ctr>10 then
exit do
end if
loop