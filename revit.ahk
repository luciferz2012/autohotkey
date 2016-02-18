#IfWinActive ahk_exe Revit.exe
    f::
        send dv ; default 3d view, should be assigned in revit first
    return
    d::
        send hc ; hide cat
    return
    s::
        send hr ; hide reset
    return
    r::
        send hl ; view hidden line
    return
    e::
        send wf ; view line frame
    return
    t::
        send tl ; line thickness
    return
    g::
        send di ; get dimension
    return
    v::
        send ac ; view family types, should be assigned in revit first
        return
    x::
        send cf ; close file, should be assigned in revit first
        sleep 500
        send n  ; close the confirm window
    return
    1::
        send 10 ;
        send !a ;
    return
    2::
        send 200 ;
        send !a ;
    return
    3::
        send 3 ;
        send !a ;
    return
    4::
        send 1000 ;
        send !a ;
    return
    5::
        send 2000 ;
        send !a ;
    return
