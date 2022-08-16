#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Gui, Add, Text, x2 y9 w40 h20 , Sell -->
Gui, Add, Edit, limit180 x52 y9 w400 h20  vTextEdit, %LoadText%
Gui, Add, Text, x2 y39 w60 h20 , how to use:
Gui, Add, Text, x2 y69 w160 h20 , F1 to send trade message ones.
Gui, Add, Text, x2 y99 w210 h20 , F2 to afk Trade spam`, cooldown is 121sec.
Gui, Add, Text, x2 y129 w260 h20 , F3 to reload script`, needed if you change the message.
Gui, Add, Text, x2 y159 w110 h20 , F4 for exiting the script
Gui, Add, Text, x302 y99 w130 h30 , Make sure trade chat is open`, and can be typed in
; Generated using SmartGUI Creator 4.0
Gui, Show, x548 y142 h187 w459, New GUI Window
Return

GuiClose:
ExitApp
F1::
Gui, Submit, nohide
Send %TextEdit%
sleep, 100
send {enter}
return


F2::
Gui, Submit, nohide
	loop{
sleep 400
	SendRaw %TextEdit%
  sleep 200
	Send {enter}
sleep, 121000

}
return

F3::reload
return

F4::exitapp
return

