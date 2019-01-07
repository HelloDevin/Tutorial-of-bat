dim i,WshShell
i=0
do while i<4
Set WshShell = createObject("wscript.shell")
WshShell.sendKeys "{F5}"
i=i+1
loop
i=0
Set s = CreateObject("sapi.spvoice") 
do while i<2
s.speak "ÄãºÃ°¡" 
i=i+1 
loop
msgbox("Íê±Ï")