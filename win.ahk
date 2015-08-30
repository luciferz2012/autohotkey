CapsLock::Esc

+Esc::CapsLock

Input_Eng(text){
	Send %text%
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
#IfWinActive ahk_exe OneNote.exe
	RShift::Esc
#IfWinActive

#F1::Media_Prev
#F2::Media_Next
