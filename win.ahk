#Include .\vim.ahk

+Space::Send {Esc}
CapsLock & A::Send {End}
CapsLock & I::Send {Home}

CapsLock::
if WinActive("ahk_group VimGroup"){
    LastIME:=VIM_IME_GET()
    if (LastIME) {
        if (VIM_IME_GetConverting(A)) {
            Send,{Esc}
        } else {
            VIM_IME_SET()
            VimSetMode("Vim_Normal")
        }
    } else {
        VimSetMode("Vim_Normal")
    }
} else {
    Send {Esc}
}
return

Input_Eng(text){
    if(VIM_IME_GET(A)){
        sleep 100
        VIM_IME_SET()
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
