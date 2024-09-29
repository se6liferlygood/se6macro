WarningMessage() {
	MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
}

DtoR(x) { ;degrees to radians 
	return x * (3.14/180)
}

global p := 0.1
$]::{ ;dance7 jump macro
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	MouseGetPos &xpos, &ypos
	global p
	Send("2")
	s := 0
	Loop 2 {
		MouseMove(1 + A_Index, A_ScreenHeight / 2)
		Send("3")
		MouseMove(A_ScreenWidth / 2 + A_Index, A_ScreenHeight / 2)
		Send("2")
	}
	Send("3")
	Sleep 100
	Send("2")
	i := 15
	while (getkeystate("]","P") || s = 0) {
		loop i {
			MouseMove(xpos + Cos(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			MouseMove(xpos + Sin(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			Sleep 10
			MouseMove(xpos - Cos(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			MouseMove(xpos - Sin(DtoR(360 * (A_Index / i))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			Sleep 10
		}
		if(!(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
			goto out1
		}
		s := 1
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
		Send("{q}{e}{z}{x}{c}")
		Sleep 10
		MouseClick "left"
		Sleep 5
		if (A_Index > 9) {
			Send("0")
		}
	}
} else WarningMessage()
}

$;::{ ;toggle autoclicker
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	MsgBox("AUTOCLICKER ON`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK!")
	Sleep 100
	while !getkeystate(";","P") {
		Sleep 10
		MouseClick "left"
	}
	MsgBox("AUTOCLICKER OFF`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK!")
} else WarningMessage()
}

global atimes := 5
global asleep := 100
':: { ;ascend glitch
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	global atimes
	global asleep
	loop atimes {
	send("2")
	send("3")
	}
	Sleep asleep
} else WarningMessage()
}

^':: { ;customize ascend glitch 
	global atimes
	global asleep
	atimes := InputBox("HOW MANY TIMES WILL KEY BE EQUIPPED PER INTERVAL IN NORMAL ASCEND GLITCH? (it is " atimes " right now)").value
	asleep := InputBox("HOW LONG TO WAIT BETWEEN EVERY INTERVAL IN NORMAL ASCEND GLITCH? (1 second is 1000 miliseconds and right now the time is " asleep " miliseconds)").value
}

global gatimes := 10
global gasleep := 1000
\:: { ;god ascend glitch
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	global gatimes
	global gasleep
	while getkeystate("\","P") {
		Send("{Esc}")
		Sleep 100
		MouseMove(A_ScreenWidth,-100)
		Click("Down")
		Send("{Esc}")
		loop gatimes {
			Send("3")
			Sleep 1
			Send("2")
			Sleep 1
		}
		Send("3")
		Sleep 100
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
		Click("Up")
		Sleep gasleep
	}
} else WarningMessage()
}

^\:: { ;customize god ascend glitch 
	global gatimes
	global gasleep
	atimes := InputBox("HOW MANY TIMES WILL KEY BE EQUIPPED PER INTERVAL IN GOD ASCEND GLITCH? (it is " gatimes " right now)").value
	asleep := InputBox("HOW LONG TO WAIT BETWEEN EVERY INTERVAL IN GOD ASCEND GLITCH? (1 second is 1000 miliseconds and right now the time is " gasleep " miliseconds)").value
}

!\:: { ;exit macro
	global toggler
	toggler := 0
	MsgBox("EXITED MACRO")
	ExitApp
}

=::{ ;silly2 spam
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	while getkeystate("=","P") {
		Send("/")
		Sleep 25
		SendText("/e silly2")
		Sleep 25
		Send('{Enter}')
		Sleep 25
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
			Sleep 10
			MouseMove(A_ScreenWidth / 3 * 2, A_ScreenHeight / 2)
			Sleep 10
		}
		Sleep 50
	}
	Send("{d up}")
} else WarningMessage()
}

#SuspendExempt

^p:: { 
	Suspend
	if(A_IsSuspended) {
		MsgBox("MACRO PAUSED!`n`n`nPRESS CONTROL P TO UNPAUSE!`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK!")
	} else {
		MsgBox("MACRO UNPAUSED!`n`n`nPRESS CONTROL P TO PAUSE!`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK!")
	}
}

tutorial() {
	MsgBox("TUTORIAL!`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!!!`n`nPRESS CONTROL P TO PAUSE/UNPAUSE MACRO!`n`n`nKEYS ON ENGLISH LAYOUT KEYBOARD!`nYOU MUST HAVE KEY AT 3 IN TOOLBAR!`n`n] for dance7 jump macro`n`n[ to use every gear in tool bar including ability and it clicks for every gear`n`n; to toggle autoclicker`n`nhold ' for ascend glitch (YOU MUST HAVE KEY AT 3!) you can customize ascend glitch by pressing control '`n`nalt \ to exit macro `n`nhold \ for god ascend glitch (YOU MUST HAVE KEY AT 3 IN TOOLBAR AND DONT USE FULLSCREEN MODE) you can customize god ascend glitch by pressing control \`n`n = to spam chat with /e silly2 `n`n hold - for speed glitch and this speed glitch works both in air and on ground`n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK! ")

}

tutorial()
^t::{
	tutorial()
}
#SuspendExempt false
