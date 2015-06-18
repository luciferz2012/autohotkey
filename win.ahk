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
#IfWinActive ahk_class OpusApp
{
	LWin::
		If TouchScreenDisabled = 1
		{
			TouchScreenDisabled = 0
			EnableTouchScreen()
		}
		Else
		{
			TouchScreenDisabled = 1
			DisableTouchScreen()
		}
	return
}
#IfWinActive

LWin::
	if TouchScreenDisabled = 1
	{
		TouchScreenDisabled = 0
		EnableTouchScreen()
	}
	Else
	{
		Send {RWin down}{Tab}{RWin up}
	}
Return

LAlt::RWin