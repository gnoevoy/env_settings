#Requires AutoHotkey v2.0

; Move selected tab left / right -> win + h / ;
#h::Send("{LWin Down}{Left}{LWin Up}") 
#l::Send("{LWin Down}{Right}{LWin Up}") 

; Maximaze (full scren) selected tab -> win + k
#k::Send("{LWin Down}{Up}{LWin Up}")

; Hide selected tab -> win + j 
; Open the most recent hidden tab -> win + ,

global MinimizedWindows := []  ; Stack to track minimized windows (last-in, first-out)

#j::{ 
    hwnd := WinGetID("A")
    if hwnd && WinExist("ahk_id " hwnd) {
        MinimizedWindows.Push(hwnd)
        WinMinimize("ahk_id " hwnd)
    }
}

#,::{ 
    while MinimizedWindows.Length > 0 {
        hwnd := MinimizedWindows.Pop()
        if WinExist("ahk_id " hwnd) {
            WinRestore("ahk_id " hwnd)
            WinActivate("ahk_id " hwnd)
            break
        }
    }
}

; Navigate between tabs in tab selecetion panel (win + tab) -> alt + h / l 
#HotIf WinActive("ahk_class XamlExplorerHostIslandWindow")  
!h::Send("{Blind}{Left}")   
!l::Send("{Blind}{Right}")  







