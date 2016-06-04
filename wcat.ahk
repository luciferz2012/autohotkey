speed := 3.5
wait := 300

#IfWinActive, BlueStacks App Player

    z::reload

    w::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        MouseClick, , w/2, h/2-h/3, , speed, U
        MouseMove, w/2, h/2
    return
    
    a::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        MouseClick, , w/2-w/2.5, h/2, , speed+1, U
        MouseMove, w/2, h/2
    return
    
    s::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        MouseClick, , w/2, h/2+h/3, , speed, U
        MouseMove, w/2, h/2        
    return
    
    d::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        MouseClick, , w/2+w/2.5, h/2, , speed+1, U
        MouseMove, w/2, h/2        
    return
    
    r::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        sleep, wait
        MouseClick, , w/2-w/5, h/2-h/4, , speed, U
        MouseMove, w/2, h/2        
    return
    
    f::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        sleep, wait
        MouseClick, , w/2+w/5, h/2-h/4, , speed, U
        MouseMove, w/2, h/2        
    return
    
    v::
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        sleep, wait
        MouseClick, , w/2, h/2+h/4, , speed, U
        MouseMove, w/2, h/2        
    return
    
    space::
        send {click down}
    return
    
    space up::
        send {click up}
        WinGetPos, , , w, h
        MouseMove, w/2, h/2
    return