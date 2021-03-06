#Include .\vim.ahk

+Space::Send {Esc}
+CapsLock::Send {Esc}
CapsLock & A::Send {End}
CapsLock & I::Send {Home}
PrintScreen::AppsKey
RAlt & /::reload

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
    if (VIM_IME_GET()) {
        sleep 100
        VIM_IME_SET()
        sleep 100
        Send %text%
        VIM_IME_SET(1)
    } else {
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

::zzp::
    Input_Eng(15011396292)
return

::zzl::
    Input_Eng("luciferz2012@gmail.com")
return

::zzz::
    Input_Eng("zhe.liu.thu@gmail.com")
return

#IfWinActive ahk_class #32770
    Tab::Down
#IfWinActive

#F1::Media_Prev
#F2::Media_Next
#F3::Media_Play_Pause

#IfWinActive ahk_class OpusApp
{
    ; check selected
    ::zcs::
        Input_Eng("221a")
        Send !x
    return

    ; check radio
    ::zcr::
        Input_Eng("25cb")
        Send !
    return

    ; check box
    ::zcb::
        Input_Eng("25a1")
        Send !x
    return
}

#IfWinActive ahk_exe devenv.exe
    RAlt::Down
    RCtrl::Up
#IfWinActive