speed := 3.5
wait := 300

#IfWinActive, Leapdroid

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

    Bear2015NM41(){
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2+h/4-h/16
        sleep 500
        send 1
        sleep 1000
        S2()
        sleep 4000
        S2()
        sleep 4000
        S2()
        sleep 4000
        S2()
        sleep 1000
        send {click}
        sleep 20000
        send {click}
        sleep 1000
        send {click}
        sleep 1000
        send {click}
        MouseClick, , w/2-W/5, h-h/9
        sleep 500
        MouseClick, , w/2+W/8, h/2+h/10
        sleep 30000
        Bear2015NM41()
    }

    Wind(){
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/10*9
        sleep, 9000
        MouseClick, , w/2-W/5, h-h/9
        sleep, 500
        MouseClick, , w/2+W/8, h/2+h/10
        sleep, 45000
        Wind()
    }

    ,::
        Wind()
    return

    S2(){
        send {click up}
        WinGetPos, , , w, h
        MouseClick, , w/2, h/2, , , D
        sleep, 300
        MouseClick, , w/2+w/5, h/2-h/4, , speed, U
        MouseMove, w/2, h/2
    }

    t::
        Pass()
    return

    y::
        Test()
    return

    Pass(){
        WinGetPos, , , w, h
        ; click return
        sleep, 9000
        MouseClick, , w/5+w/32, h/6*5
        ; click point
        sleep, 3000
        MouseClick, , w/2, h/2
        ; click talk or battle
        sleep, 9000
        MouseClick, , w/2, h/2
        ; no helper
        sleep, 3000
        MouseClick, , w/2, h/2-h/10
        ; start battle
        sleep, 3000
        MouseClick, , w/5*4, h/2+h/3
        
        sleep, 45000

        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/2

        ; check items
        MouseClick, , w/2, h/10*9
        ; check gifts
        sleep, 9000
        MouseClick, , w/3*2, h/4*3
        
        ; check talk gift
        MouseClick, , w/2, h/2+h/8
    }

    Gift(){
        WinGetPos, , , w, h
        MouseClick, , w/2, h/5*4
        sleep, 1000
        MouseClick, , w/3*2, h/5*3
        sleep, 1000
        MouseClick, , w/2, h/5*3
        sleep, 9000
    }

    Gifts(){
        Gift()
        Gifts()
    }

    Test(){
        WinGetPos, , , w, h
        MouseClick, , w/5+w/32, h/6*5
    }

    PassAll(){
        Pass()
        sleep, 5000
        PassAll()
    }

    p::
        PassAll()
    return

    l::
        Gifts()
    return

    Event(){
        WinGetPos, , , w, h
        ; click talk or battle
        sleep, 9000
        MouseClick, , w/2, h/2
        ; no helper or helper
        sleep, 3000
        MouseClick, , w/2, h/2-h/10
        MouseClick, , w/2, h/2-h/5
        ; start battle
        sleep, 3000
        MouseClick, , w/5*4, h/2+h/3
        
        sleep, 45000

        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/2
        MouseClick, , w/2, h/2

        ; check items
        MouseClick, , w/2, h/10*9
        ; check gifts
        sleep, 9000
        MouseClick, , w/3*2, h/4*3
        
        ; check talk gift
        MouseClick, , w/2, h/2+h/8
    }

    EventAll(){
        Event()
        sleep, 5000
        EventAll()
    }

    m::
        EventAll()
    return

    Train(){
        send 1
        sleep 3000
        send 2
    }

    TrainLoop(){
        loop{
            Train()
            sleep 3000
        }
    }

    /::
        TrainLoop()
    return