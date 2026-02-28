#Requires AutoHotkey v2.0

; Need G-Shift key to be Ctrl or CapsLock

; Prevent multiple action
wheelThreshold := 200
lastWheelLeft := 0
^WheelLeft::
{
    global lastWheelLeft
    currentTime := A_TickCount
    if (currentTime - lastWheelLeft > wheelThreshold) {
      Send "^#{Left}"
      lastWheelLeft := currentTime
    }
}
lastWheelRight := 0
^WheelRight::
{
    global lastWheelRight
    currentTime := A_TickCount
    if (currentTime - lastWheelRight > wheelThreshold) {
      Send "^#{Right}"
      lastWheelRight := currentTime
    }
}
^MButton::^0
; ^RButton::MButton doesn't work when hold
^RButton::
{
    Send "{MButton down}"
    KeyWait "RButton"
    Send "{MButton up}"
}

; Prevent invalid input
WheelLeft::WheelLeft
WheelRight::WheelRight
