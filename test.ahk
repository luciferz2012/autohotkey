p::
    WinGetPos, x, y, w, h, A
    MsgBox, %x%, %y%, %w%, %h%
return

q::
    WinMove, A, , 0, 0
return