global safety := 0
$]::{ ;dance7 jump macro
global safety
if(safety = 1) {
	Loop 2 {
		MouseMove(1, A_ScreenHeight / 2)
		Send("1")
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
		Send("2")
	}
	while getkeystate("]","P") {
		Loop 2 {
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
		MouseMove(A_ScreenWidth / 3, A_ScreenHeight / 2)
		}
		Sleep 1
		Loop 2 {
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
		MouseMove(A_ScreenWidth / 3 * 2, A_ScreenHeight / 2)
		}
		Sleep 1
		if(safety = 0) {
			goto out1
		}
	}
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
out1:
}
$[::{ ;use all gears in toolbar
global safety
if(safety = 1) {
	Loop 10 {
		if (A_Index < 10) {
			str := "" A_Index
			Send(str)
		} else Send("0")
		Send("q")
		Send("e")
		MouseClick "left"
		Sleep 10
		if (A_Index > 9) {
			Send("0")
		}
	}
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
}
global toggler := 0
$;::{ ;toggle autoclicker
global safety
if(safety = 1) {
	global toggler
	if (toggler = 1) {
		toggler := 0
		MsgBox("AUTOCLICKER OFF")
	} else {
		toggler := 1
		MsgBox("AUTOCLICKER ON")
	}
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX")
}
':: { ;spam click 3 button for key glitching
global safety
if(safety = 1) {
	while getkeystate("'","P"){
		Send("3")
		Sleep 1
		if(safety = 0) {
			goto out2
		}
	}
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX")
out2:
}
\:: { ;exit macro
	global toggler
	toggler := 0
	MsgBox("EXITED MACRO")
	ExitApp
}
^\:: { ;shift + c 2k times
global safety
if(safety = 1) {
	loop 2000 {
		send("+c")
		Sleep 1
	}
	MsgBox "DONE!"
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
}
=::{ ;chat spam with mouse
global safety
if(safety = 1) {
	while getkeystate("=","P") {
		MouseClick "left"
		Sleep 1
		Send("^v")
		Sleep 1
		Send('{Enter}')
		Sleep 1
		if(safety = 0) {
			goto out3
		}
	}
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
out3:
}
global toggler2 := 0
-::{ ;speed glitch
global safety
if(safety = 1) {
	global toggler2
	if(toggler2 = 0) {
		toggler2 := 1
	} else {
		toggler2 := 0
	}
} else MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
}
tutorial() {
	MsgBox("TUTORIAL`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!!!`n`n`nKEYS ON ENGLISH LAYOUT KEYBOARD!`n`n] for dance7 jump macro`n`n[ to use every gear in tool bar including ability and it clicks for every gear`n`n; to toggle autoclicker`n`n' to spam click 3 for key glitching`n`n\ to exit macro `n`n control \ to press shift + c 2k times `n`n = to spam chat with your clipboard if you hold your mouse over the chat `n`n - to toggle speed glitch and this speed glitch works both in air and on ground `n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK! ")

}
tutorial()
^t::{
	tutorial()
}
while (true) { ;autoclicker and speed glitch
global safety
if(WinActive("Roblox")) {
	safety := 1
} else safety := 0
if(safety = 1) {
	if (toggler = 1) { ;AUTOCLICKER
		MouseClick "left"
		Sleep 1
	}
	if(toggler2 = 1) {
		Send("{d down}")
		loop 10 { ;SPEED GLITCH
			MouseMove(A_ScreenWidth / 3, A_ScreenHeight / 2)
			Sleep 1
			MouseMove(A_ScreenWidth / 3 * 2, A_ScreenHeight / 2)
			Sleep 1
		}
		Sleep 50
		if (toggler2 != 1) {
			Send("{d up}")
			
		}
	}
	}
}
