#singleinstance force
#notrayicon
WinGet, list ,list


Loop %list%
{

    element := list%A_Index%

    WinGetTitle, title , ahk_id %element%
   total=%total%%title%|
}


Gui, Add, ListBox,h200 w200 vone, %total%
gui,add,button,gshow,Showcase
gui,show
return

show:
gui,submit
gui 2: -caption
gui 2: color,white
gui 2:show, x0 y0 h%a_screenheight% w%A_screenwidth%, -showcaser-
winactivate, %one%
WinSet, alwaysontop, on , %one%
WinHide ahk_class Shell_TrayWnd
WinHide  ahk_class Button



return
guiclose:

exitapp

esc::
WinShow, ahk_class Shell_TrayWnd
Winshow ahk_class Button
WinSet, alwaysontop, off , %one%
exitapp