WarningMessage() {
	MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
}

DtoR(x) { ;degrees to radians 
	return x * (3.14/180)
}

global p := 0.1
$]::{ ;dance7 jump macro and backfling macro
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	MouseGetPos &xpos, &ypos
	global p
	Send("2")
	s := 0
	b := 0
	if(getkeystate("s","P")) {
		Send("{w down}")
		Send("{s up}")
		Sleep 50
		Send("{Shift}")
		Loop 4 {
			MouseMove(1 + A_Index, A_ScreenHeight / 2)
			Send("3")
			MouseMove(A_ScreenWidth / 2 + A_Index, A_ScreenHeight / 2)
			Send("2")
		}
		Send("3")
		Sleep 100
		Send("2")
		b := 1
	} else {
	Loop 2 {
		MouseMove(1 + A_Index, A_ScreenHeight / 2)
		Send("3")
		MouseMove(A_ScreenWidth / 2 + A_Index, A_ScreenHeight / 2)
		Send("2")
	}
	}
	Send("3")
	Sleep 100
	Send("2")
	i := 15
	while (getkeystate("]","P") || s = 0) {
		loop i {
			MouseMove(xpos + Cos(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			MouseMove(xpos + Sin(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			Sleep 1
			MouseMove(xpos - Cos(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			MouseMove(xpos - Sin(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			Sleep 1
		}
		if(!(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
			goto out1
		}
		s := 1
	}
	if(b = 1) {
		Send("{w up}")
	}
} else WarningMessage()
out1:
}

$[::{ ;use all gears in toolbar
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
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
} else WarningMessage()
}

global toggler := 0
$;::{ ;toggle autoclicker
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	global toggler
	if (toggler = 1) {
		toggler := 0
		MsgBox("AUTOCLICKER OFF")
	} else {
		toggler := 1
		MsgBox("AUTOCLICKER ON")
	}
} else WarningMessage()
}

':: { ;ascend glitch
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	loop 5 {
	send("2")
	send("3")
	}
	Sleep 100
} else WarningMessage()
}

\:: { ;exit macro
	global toggler
	toggler := 0
	MsgBox("EXITED MACRO")
	ExitApp
}
^\:: { ;shift + c 2k times
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	loop 2000 {
		send("+c")
		Sleep 1
	}
	MsgBox "DONE!"
} else WarningMessage()
}

=::{ ;silly2 spam
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	while getkeystate("=","P") {
		Send("/")
		Sleep 1
		SendText("/e silly2")
		Sleep 1
		Send('{Enter}')
		Sleep 1
		if(!(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
			goto out3
		}
	}
} else WarningMessage()
out3:
}

-::{ ;speed glitch
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	while getkeystate("-","P") {
	Send("{d down}")
		loop 10 { ;SPEED GLITCH
			MouseMove(A_ScreenWidth / 3, A_ScreenHeight / 2)
			Sleep 1
			MouseMove(A_ScreenWidth / 3 * 2, A_ScreenHeight / 2)
			Sleep 1
		}
		Sleep 50
	}
	Send("{d up}")
} else WarningMessage()
}
tutorial() {
	MsgBox("TUTORIAL`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!!!`n`n`nKEYS ON ENGLISH LAYOUT KEYBOARD!`nYOU MUST HAVE KEY AT 3 IN TOOLBAR!`n`n] for dance7 jump macro`n`n[ to use every gear in tool bar including ability and it clicks for every gear`n`n; to toggle autoclicker`n`nhold ' for ascend glitch (YOU MUST HAVE KEY AT 3!)`n`n\ to exit macro `n`n control \ to press shift + c 2k times `n`n = to spam chat with /e silly2 `n`n hold - for speed glitch and this speed glitch works both in air and on ground `n`n`n`nHOW TO DO BACKFLING MACRO!`n`nWHILE HOLDING S AND LAYING DOWN IN DANCE7 WITHOUT SHIFTLOCK TURNED ON HOLD THE DANCE7 JUMP MACRO BUTTON FOR A WHILE THEN LET GO!`n`n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK! ")

}

tutorial()
^t::{
	tutorial()
}

while (true) { ;autoclicker and speed glitch
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	if (toggler = 1) { ;AUTOCLICKER
		loop 5 {
		MouseClick "left"
		}
		Sleep 1
	}
	}
}
