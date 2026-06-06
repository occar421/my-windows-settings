#Requires AutoHotkey v2.0

; Need G-Shift key to be Ctrl or CapsLock

; Prevent multiple action
wheelThreshold := 200
lastWheelLeft := 0

; {Blind} を追加：物理的な Ctrl の状態を維持
^WheelLeft::
{
    global lastWheelLeft
    currentTime := A_TickCount
    if (currentTime - lastWheelLeft > wheelThreshold) {
        Send "{Blind}#{Left}" ; Ctrl は既に押されている(Blind)ので Win+Left だけ指定
        lastWheelLeft := currentTime
    }
}

lastWheelRight := 0
^WheelRight::
{
    global lastWheelRight
    currentTime := A_TickCount
    if (currentTime - lastWheelRight > wheelThreshold) {
        Send "{Blind}#{Right}" ; Ctrl は既に押されている(Blind)ので Win+Right だけ指定
        lastWheelRight := currentTime
    }
}

^MButton::Send "{Blind}0"

; ^RButton::MButton doesn't work when hold
; {Blind} を使うことで、Ctrl を維持したまま MButton を制御
^RButton::
{
    Send "{Blind}{MButton down}"
    KeyWait "RButton"
    Send "{Blind}{MButton up}"
}

; Prevent invalid input
WheelLeft::WheelLeft
WheelRight::WheelRight
