WarningMessage() {
	MsgBox("YOU CAN ONLY USE THIS IN ROBLOX!")
}

DtoR(x) { ;degrees to radians 
	return x * (3.14/180)
}

global p := 0.1
global dancefps := 50
global equipped := 5
global spin := 1
$]::{ ;dance7 jump macro
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	MouseGetPos &xpos, &ypos
	global p
	Send("2")
	s := 0
	str := ""
	Loop equipped {
		str := str "{2 Down}{3 Down}{2 Up}{3 Up}"
	}
	Send(str)
	Sleep 100
	Send("2")
	i := 15
	while ((getkeystate("]","P") && !(spin = 2 && s = 1)) || s = 0) {
		if(spin > 0) {
		loop Ceil(i * (10 / (1000 / dancefps))) {
			MouseMove(xpos + Cos(DtoR(360 * (A_Index / (i * (10 / (1000 / dancefps)))))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			MouseMove(xpos + Sin(DtoR(360 * (A_Index / (i * (10 / (1000 / dancefps)))))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			Sleep 1000 / dancefps
			MouseMove(xpos - Cos(DtoR(360 * (A_Index / (i * (10 / (1000 / dancefps)))))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			MouseMove(xpos - Sin(DtoR(360 * (A_Index / (i * (10 / (1000 / dancefps)))))) * (A_ScreenWidth / 2 * p),A_ScreenHeight / 2)
			Sleep 1000 / dancefps
		}
		if(!(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
			goto out1
		}
	}
		if(spin = 0 || spin = 2) {
			Send("{s down}{d down}{space down}")
		while (getkeystate("]","P") || s = 0) {
		loop 15 { ;SPEED GLITCH
			MouseMove(xpos + A_ScreenWidth * 0.1, A_ScreenHeight / 2)
			Sleep 10
			MouseMove(xpos - A_ScreenWidth * 0.1, A_ScreenHeight / 2)
			Sleep 10
		}
		MouseMove(xpos, A_ScreenHeight / 2)
		s := 1
	}
	Send("{s up}{d up}{space up}")
		}
		s := 1
	}
} else WarningMessage()
out1:
}

^]:: { ;customize dance7 jump macro
	result := MsgBox("do you want to disable spin and do speed glitch instead? `n`n(IF YOU PRESS NO YOU WILL GET AN OPTION TO DO SPIN AND SPEED GLITCH!)",, "YesNo")
	if(result = "Yes") {
		global spin := 0
		global equipped := InputBox("How many times will key and sword be equipped `n`nCURRENT: " equipped).value
	} else {
		result := MsgBox("do you want to do spin then speed glitch?",, "YesNo")
		if(result = "Yes") {
			global spin := 2
		} else {
			global spin := 1
		}
		global p := InputBox("How much percentage of the screenwidth will the mouse move in?`n`n CURRENT PERCENTAGE: " p * 100).value / 100
		global dancefps := InputBox("At what fps will the mouse move at? `n`n(IF THE FPS IS TOO HIGH FOR YOUR COMPUTER THE MACRO WILL BE SLOWER!) `n`nCURRENT FPS: " dancefps).value
		global equipped := 5
	}
}

global uses := 10
global ta := 1
$[::{ ;use all gears in toolbar
if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
global uses
global ta
	Loop 10 {
		Send("{" (A_Index - 1) "}{LButton}")
		if (ta = 1) {
			Sleep 1
			Send("{q}{e}{z}{x}{c}{r}{f}{v}")
		}
		Sleep uses
	}
	Send("9")
} else WarningMessage()
}

^[:: { ;customize use all gears in toolbar 
	global ta
	if(ta = 1) {
		str := "all"
	} else {
		str := "no"
	}
	Result := MsgBox("Press yes to disable ability usage and only keep click in gear swapping and press no to use ability between every gear swap`n`n(if ability is disabled gear swapping is faster and " str " abilities are used right now)",, "YesNo")
	global uses := InputBox("How many milisecond wait between every gear swap `n`n(1 SECOND IS 1000 MILISECONDS AND RIGHT NOW IT IS " uses " MILISECONDS WAIT!)").value
	if(Result = "Yes") {
		ta := 0
		MsgBox("You chose to disable ability usage!")
	} else {
		ta := 1
		MsgBox("You chose to enable ability usage!")
	}
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
	str := ""
	s := 0
	loop atimes {
		str := str "{2 Down}{3 Down}{2 Up}{3 Up}"
	}
	while(GetKeyState("'","P") || s = 0) {
	Send(str)
	Sleep asleep
	s := 1
	}
} else WarningMessage()
}

^':: { ;customize ascend glitch 
	global atimes := InputBox("HOW MANY TIMES WILL KEY BE EQUIPPED PER INTERVAL IN NORMAL ASCEND GLITCH? (it is " atimes " right now)").value
	global asleep := InputBox("HOW LONG TO WAIT BETWEEN EVERY INTERVAL IN NORMAL ASCEND GLITCH? (1 second is 1000 miliseconds and right now the time is " asleep " miliseconds)").value
}

global gatimes := 50
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
			Send("{2 Down}{3 Down}{2 Up}{3 Up}")
		}
		Sleep 100
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
		Click("Up")
		Sleep gasleep
	}
} else WarningMessage()
}

^\:: { ;customize god ascend glitch 
	global gatimes := InputBox("HOW MANY TIMES WILL KEY BE EQUIPPED PER INTERVAL IN GOD ASCEND GLITCH? (it is " gatimes " right now)").value
	global gasleep := InputBox("HOW LONG TO WAIT BETWEEN EVERY INTERVAL IN GOD ASCEND GLITCH? (1 second is 1000 miliseconds and right now the time is " gasleep " miliseconds)").value
}

!\:: { ;exit macro
	global toggler
	toggler := 0
	MsgBox("EXITED LPI MACRO")
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
	if(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe")) {
	MouseGetPos &xpos, &ypos
	while (GetKeyState("-","P")) {
				Send("{s down}{d down}{space down}")
				loop 15 { ;SPEED GLITCH
					MouseMove(xpos + A_ScreenWidth * 0.1, A_ScreenHeight / 2)
					Sleep 10
					MouseMove(xpos - A_ScreenWidth * 0.1, A_ScreenHeight / 2)
					Sleep 10
				}
				MouseMove(xpos, A_ScreenHeight / 2)
				Sleep 50
				if (!(WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
					Send("{s up}{d up}{space up}")
				}
	}
	Send("{s up}{d up}{space up}")
	} else warningmessage()
}
}

#SuspendExempt

^p:: { 
	Suspend
	if(A_IsSuspended) {
		MsgBox("LPI MACRO PAUSED!`n`n`nPRESS CONTROL P TO UNPAUSE!`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK!")
	} else {
		MsgBox("LPI MACRO UNPAUSED!`n`n`nPRESS CONTROL P TO PAUSE!`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK!")
	}
}

tutorial() {
	MsgBox("LPI MACRO TUTORIAL!`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!!!`n`nPRESS CONTROL P TO PAUSE/UNPAUSE MACRO!`n`n`nKEYS ON ENGLISH LAYOUT KEYBOARD!`nYOU MUST HAVE KEY AT 3 IN TOOLBAR!`n`n] for dance7 jump macro and you can press control ] to customize dance7 jump macro`n`n[ to use every gear in tool bar and you can press control [ to customize this`n`n; to toggle autoclicker`n`nhold ' for ascend glitch (YOU MUST HAVE KEY AT 3!) you can customize ascend glitch by pressing control '`n`nalt \ to exit macro `n`nhold \ for god ascend glitch (YOU MUST HAVE KEY AT 3 IN TOOLBAR AND DONT USE FULLSCREEN MODE) you can customize god ascend glitch by pressing control \`n`n = to spam chat with /e silly2 `n`n hold - for speed glitch`n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK! ")

}

tutorial()
^t::{
	tutorial()
}
#SuspendExempt false
