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

TouchScreenDisabled:=0

RemoveToolTip:
	SetTimer, RemoveToolTip, Off
	ToolTip
return

EnableTouchScreen()
{
	Run c:\.tool\DevManView\DevManView.exe /enable "HID-compliant touch screen"
	ToolTip, Touch screen is enabled
	SetTimer, RemoveToolTip, 3000
}

DisableTouchScreen()
{
	Run c:\.tool\DevManView\DevManView.exe /disable "HID-compliant touch screen"
	ToolTip, Touch screen is disabled
	SetTimer, RemoveToolTip, 3000
}

#IfWinActive ahk_class #32770
	Tab::Down
#IfWinActive

LWin::
	if TouchScreenDisabled = 0
	{
		TouchScreenDisabled = 1
		DisableTouchScreen()
	}
	Else
	{
		TouchScreenDisabled = 0
		EnableTouchScreen()
	}
Return

LAlt::RWin