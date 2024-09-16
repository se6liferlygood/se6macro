$]::{
	Loop 5 {
		MouseMove(1, A_ScreenHeight / 2)
		Sleep 1
		MouseMove(A_ScreenWidth / 2, A_ScreenHeight / 2)
		Send("1")
		Sleep 1
		Send("2")
		Sleep 1
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
		if (A_Index > 9) {
			Send("0")
		}
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
\:: {
	global toggler
	toggler := 0
	ExitApp
}
/:: {
	loop 2000 {
		send("+c")
		Sleep 1
	}
	MsgBox "DONE!"
}
=::{
	while getkeystate("=","P") {
		MouseClick "left"
		Sleep 1
		Send("^v")
		Sleep 1
		Send('{Enter}')
		Sleep 1
	}
}
