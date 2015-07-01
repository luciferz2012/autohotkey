#Include .\vim.ahk

CapsLock::Esc

+Esc::CapsLock

Input_Eng(text){
	if(VIM_IME_GET()=1){
		VIM_IME_SET(0)
		Send %text%
		VIM_IME_SET(1)
	}else{
		Send %text%
	}
}

::zzd::
	FormatTime d,, yyyy-MM-dd
	Input_Eng(d)
return

::zzt::
	FormatTime t,, yyyy-MM-dd HH:mm:ss
	Input_Eng(t)
return

#IfWinActive ahk_class #32770
	Tab::Down
#IfWinActive ahk_group OneNoteGroup
	RShift::
		if(VIM_IME_GET()=1){
			Send {Esc}
			VIM_IME_SET(0)
		}else{
			VIM_IME_SET(1)
		}
	return
#IfWinActive

; RAlt::