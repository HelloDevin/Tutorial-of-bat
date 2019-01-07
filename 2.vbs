Dim WshShell
Set WshShell=Wscript.createObject("wscript.shell")
WshShell.run "C:\Users\4\Desktop\1.txt"
WshShell.AppActivate("1.txt - ¼ÇÊÂ±¾")
Wscript.Sleep 500
WshShell.SendKeys "Happy Birthdy!!!"
Wscript.Sleep 500
WshShell.SendKeys "%FS"
Wscript.Sleep 500
WshShell.SendKeys "%FX"
Wscript.Sleep 500
WshShell.run "cmd"
WshShell.AppActivate("c:\Windows\system32\cmd.exe")
Wscript.Sleep 500
WshShell.SendKeys "dir"
Wscript.Sleep 500
WshShell.SendKeys "~"
Wscript.Sleep 500
WshShell.SendKeys "%{F4}"
