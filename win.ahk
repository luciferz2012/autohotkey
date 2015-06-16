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

EnableTouchScreen()
{
	Run c:\.tool\DevManView\DevManView.exe /enable "HID-compliant touch screen"
	TrayTip, Touch Mode, Touch screen is enabled, 1000
}

DisableTouchScreen()
{
	Run c:\.tool\DevManView\DevManView.exe /disable "HID-compliant touch screen"
	TrayTip, Touch Mode, Touch screen is disabled, 1000
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