dim a,ctr 
ctr=0 
const pass="pas123_" 
do 
a=inputbox("请输入密码") 
if a=pass then 
msgbox("认证成功") 
msgbox("(你可以在这里加一段成功后得到的信息)") 
exit do 
else 
ctr=ctr+1 '如果密码出错就增加一次错误认证计数'
msgbox("认证出错, 请检查密码") 
end if 
loop while ctr<3