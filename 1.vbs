Dim WshShell
Set WshShell=Wscript.createObject("wscript.shell")
WshShell.run "notepad"
wscript.Sleep 1500
WshShell.AppActivate "Ξ? - ?±"
WshShell.SendKeys "Happy Birthdy!!!"
Wscript.Sleep 500
WshShell.SendKeys "%FS"
Wscript.Sleep 500
WshShell.SendKeys "birth"
Wscript.Sleep 500
WshShell.SendKeys "%S"
Wscript.Sleep 500
WshShell.SendKeys "%FX"
WshShell.run "C:\Users\4\Desktop\1.txt"
WshShell.AppActivate "1.txt"
WshShell.SendKeys "echo dir>>1.txt"