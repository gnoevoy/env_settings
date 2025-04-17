#Requires AutoHotkey v2.0

; Move tabs with win + hjkl
; Reopen most recent hidden tab with win + , 

#l::{   
    Send("{LWin Down}{Right}{LWin Up}")
}

#h::{   
    Send("{LWin Down}{Left}{LWin Up}")
}


global MinimizedWindows := []  ; Stack to track minimized windows (last-in, first-out)

#j::{   
    hwnd := WinGetID("A")
    if hwnd && WinExist("ahk_id " hwnd) {
        MinimizedWindows.Push(hwnd)
        WinMinimize("ahk_id " hwnd)
    }
}

#k::{   
    Send("{LWin Down}{Up}{LWin Up}")
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


; Navigate in tabs selection windows with h and l

#HotIf WinActive("ahk_class XamlExplorerHostIslandWindow")  
!h::Send("{Blind}{Left}")   
!l::Send("{Blind}{Right}")  



