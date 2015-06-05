#Include .\vim.ahk

#g::
WinGetClass, class, A
MsgBox, The active window's class is "%class%"
return

CapsLock::Esc
+Esc::CapsLock