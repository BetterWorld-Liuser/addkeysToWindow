#Requires AutoHotkey v2.0-beta
#SingleInstance

WindowIDMap:=Map()


Open(key){
; 打开对应窗口
num:=SubStr(key, 3 ,1)
WinActivate WindowIDMap[num]
; MsgBox num
}

Set(key){
; 设置对应窗口
num:=SubStr(key,3,1)
WindowIDMap[num]:=WinGetID("A")
; MsgBox key
}

Print(key){
string := ""
index:=0
for key in WindowIDMap{
    index++
    string :=  string "`n" index "`:" WinGetTitle(WindowIDMap[key])
}
    
    
SendText string
}

Hotkey "<!1" , Open
Hotkey "<!2" , Open
Hotkey "<!3" , Open
Hotkey "<!4" , Open
Hotkey "<!5" , Open
Hotkey "<!6" , Open

Hotkey ">!1" , Set
Hotkey ">!2" , Set
Hotkey ">!3" , Set
Hotkey ">!4" , Set
Hotkey ">!5" , Set
Hotkey ">!6" , Set
Hotkey ">!p" , Print






