while true
	if _GetCaps() = 1 then
		mouseclick("left")
		sleep(20)
	else
		sleep(50)
	endif
wend

Func _GetCaps()
    $ret = DllCall("user32.dll","long","GetKeyState","long",0x14)
    Return $ret[0]
EndFunc
