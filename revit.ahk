#IfWinActive ahk_exe Revit.exe
	f::
		send dv ; default 3d view, should be assigned in revit first
	return
	d::
		send hc
	return
	s::
		send hr
	return
	a::
		send hl
	return
	v::
		send wf
	return
	