#Requires AutoHotkey v2.0
#singleinstance
#Warn


if  WinExist("Roblox")  {
    winActivate
    }
else   {
    msgbox "Roblox is not running `n is it open in another desktop?"
    exitapp  
}
 safetycheck(*){
    if  WinExist("Roblox")  {
        return
    }
        else {
        exitapp
        }
}

Fullscreen_check(*) {
    WinGetClientPos ,, &W, &H, "Roblox"
    if H = A_ScreenHeight
        {
            send "{F11}"
        }
    else
        return
}


$,::
{ while GetKeyState(",", "P")
	{
    loop "1" {
    Send "{1 down}"
    Send "{2 down}"
    sleep 25
    Send "{1 up}"
    Send "{2 up}"
    sleep 25
    }
}
}

;? base hotkey is F2
hotkey "F2", tabgltich_temp
tabgltich_temp(*){
    safetycheck()
    Fullscreen_check()
    mouse_00_check()
    if {}
    Click -1, -2, "Down Right"
    KeyWait "F2"
    click A_ScreenWidth / 3, A_ScreenHeight /2, "Up Right"

}

;? base hotkey is F3
hotkey "F3", TabGlitchTillRightClick
TabGlitchTillRightClick(*){
    Fullscreen_check()
    mouse_00_check()
    while GetKeyState("F3", "P")
        {
            safetycheck()
            loop "1"
                click -1, -10, "Down Right"
                sleep 25
                click A_ScreenWidth / 3, A_ScreenHeight /2, "Up Left"
        }
}
A_Clipboard := "/e silly2"

;? base hotkey is F7
hotkey "F7", chatSpam
chatSpam(*) {
    while getkeystate("F7", "P") {
        A_Clipboard := pasted_text
        send "/"
        sleep 5
        send "^v"
        sleep 5
        send "{enter}"
        sleep 5
    }
}

;? base hotkey is F5
hotkey "F5", tab_item_spam
tab_item_spam(*){
    safetycheck()
    Fullscreen_check()
    mouse_00_check()
    loop "5"{
        click -1, -10, "Down Right"
        sleep 25
        click 0, 0, "Up Left"
    }
    sleep 10
    counter := 5
    loop "6" {
        send counter
        send "q"
        sleep 10
        click A_ScreenWidth / 2 , A_ScreenHeight / 2, "Left"
        sleep 10
        counter += 1
    }
    counter += 0
    sleep 10
    click A_ScreenWidth / 2, A_ScreenHeight / 2, "Right"
}


$]::{
	while getkeystate("]","P") {
	Loop 10 {
		MouseMove(1, A_ScreenHeight / 2)
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
	}
	}
}
$[::{
	Loop 10 {
		if (A_Index < 10) {
			str := "" A_Index
			Send(str)
		} else Send("0")
		Send("q")
		Send("e")
		MouseClick "left"
		Sleep 10
	}
}
global toggler := 0
$;::{
	global toggler
	if (toggler = 1) {
		toggler := 0
	} else toggler := 1
}
while (true) {
	if (toggler = 1) {
		MouseClick "left"
		Sleep 1
	}
}
':: {
	while getkeystate("'","P"){
		Send("3")
		Sleep 1
	}
}

#suspendexempt
+F1:: suspend
\:: reload
^+F12:: exitapp
#suspendexempt false