dim a,ctr 
ctr=0 
const pass="pas123_" 
do 
a=inputbox("����������") 
if a=pass then 
msgbox("��֤�ɹ�") 
msgbox("(������������һ�γɹ���õ�����Ϣ)") 
exit do 
else 
ctr=ctr+1 '���������������һ�δ�����֤����'
msgbox("��֤����, ��������") 
end if 
loop while ctr<3