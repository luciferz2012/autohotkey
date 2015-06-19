#Include .\vim.ahk

#g::
	WinGetClass, class, A
	MsgBox, The active window's class is "%class%"
return

CapsLock::Esc

+Esc::CapsLock

::zzd::
	FormatTime, d,, yyyy-MM-dd
	SendInput %d%
return

::zzt::
	FormatTime, t,, yyyy-MM-dd HH:mm:ss
	SendInput %t%
return

#IfWinActive ahk_class #32770
	Tab::Down
#IfWinActive