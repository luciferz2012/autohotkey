CapsLock & H::send {Left}
CapsLock & J::send {Down}
CapsLock & K::send {Up}
CapsLock & L::send {Right}
CapsLock & U::send {PgUp}
CapsLock & D::send {PgDn}
CapsLock & I::send {End}
CapsLock & A::send {Home}

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

::zzi::
	FormatTime t,, yyyyMMdd
	Input_Eng(t)
return

#IfWinActive ahk_class #32770
	Tab::Down
#IfWinActive

#F1::Media_Prev
#F2::Media_Next
#F3::Media_Play_Pause