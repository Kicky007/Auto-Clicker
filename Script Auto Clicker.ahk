#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%
#SingleInstance, Force
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SetDefaultMouseSpeed, 7
SetMouseDelay, 20


;Variabile generale
global RedVMax :=           [4,2,3]
global BlackVMax :=         [3,2,1]
global i := 1
global redV := 0
global blackV := 0
;Variabile in secunde
global Sleeping := 5000
global sleepV32 := 2000
global s1 := 15000
global s2 := 10000
global s3 := 5000
global s4 := 1000
global giantslep := 13000
;Variabile pentru statistica
global b1 := 0
global b2 := 0
global b4 := 0
global b8 := 0
global b16 := 0
global b32 := 0
global b64 := 0
global b128 := 0
global b256 := 0
global b512 := 0
global b1024 := 0
global b2048 := 0
global b4096 := 0
;Terminarea Variabilelor
;Functii
;***********************************************
FormatTime, timeString
A1(){
    if i=1
    b1++
}
A2(){
    if i = 2
    b2++
}
A4(){
    if i = 4
    b4++
}
A8(){
    if i = 8
    b8++
}
A16(){
    if i = 16
    b16++
}
A32(){
    if i = 32
    b32++
}
A64(){
    if i = 64
    b64++
}
A128(){
    if i = 128
    b128++
}
A256(){
    if i = 256
    b256++
}
A512(){
    if i = 512
    b512++
}
A1024(){
    if i = 1024
    b1024++
}
A2048(){
    if i = 2048
    {
        b2048++
    }
}
A4096(){
    if i = 4096
    {
        MsgBox, Ai pierdut totii banii :), dar mai ai profitul
        ExitApp
    }
}
logIn(){
    MouseMove, 796, 392
    click
}
logOut(){
    MouseMove, 1699, 131
    click
}
exitDialog(){
    MouseMove, 1270,396
    click
    sleep, 1000
    click
}

statistics()
{
    FormatTime, timeString1
    FileAppend, `nData: %timeString% `n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 1.Iteratia a ajuns la nr 1 de . %b1% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 2.Iteratia a ajuns la nr 2 de . %b2% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 3.Iteratia a ajuns la nr 4 de . %b4% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 4.Iteratia a ajuns la nr 8 de . %b8% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 5.Iteratia a ajuns la nr 16 de . %b16% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 6.Iteratia a ajuns la nr 32 de . %b32% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 7.Iteratia a ajuns la nr 64 de . %b64% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 8.Iteratia a ajuns la nr 128 de . %b128% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 9.Iteratia a ajuns la nr 256 de . %b256% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 10.Iteratia a ajuns la nr 512 de . %b512% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 11.Iteratia a ajuns la nr 1024 de . %b1024% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 12.Iteratia a ajuns la nr 2048 de .  %b2048% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, 13.Iteratia a ajuns la nr 4096 de .  %b4096% . ori`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
    FileAppend, `nEND Data: %timeString1%`n, D:\Script-uri ruleta\Beta script-uri\Function V\Verificarea.txt
}
sleepAfterRotate(Sleeping){
    Sleep, Sleeping
}
V32(){
    if(i>=32)
    sleep, sleepV32  
}
moveRed(){
    MouseMove, 1000, 750
    Click, %i%
}
moveSpin(){
    MouseMove, 1200, 965
	click 1
}
moveBlack(){
    MouseMove, 1121, 826
    click, %i%
}
colorWin(){
    i:=1
}
colorDidNotWin(){
    i:= i*2
}
findColorRed(){
    PixelSearch, ax, ay, 263, 940, 303, 1006, 0xff0101, 5, RGB fast
}
findColorBlack(){
    PixelSearch, ax, ay, 263, 940, 303, 1006, 0xfefe00, 5, RGB fast
}
findColorGreen(){
    PixelSearch, ax, ay, 263, 940, 303, 1006, 0x199832, 5, RGB fast
}
openChrome(){
    IfWinNotExist, ahk_class Chrome_WidgetWin_1
        Run, chrome.exe
    if WinActive("ahk_class Chrome_WidgetWin_1")
        Send ^{tab} ; Sa stergi aceasta instructiune
    else
        WinActivate ahk_class Chrome_WidgetWin_1
}
fullScreenOut(){
    MouseMove, 1643,28
    Click
}
altF4(){
    Send {alt Down}{F4 Down}{alt Up}{F4 Up}
    MouseMove, 1080,506
    Click
}
S1(s1){
    Sleep, s1
}
S2(s2){
    Sleep, s2
}
S3(s3){
    Sleep, s3
}
S4(s4){
    Sleep, s4
}
clickPlayGame(){
    MouseMove, 706,520
    sleep, 500
    Click
}
fullScreenIn(){
    mousemove, 1483, 226
    click
}
flashAccept(){
    MouseMove, 316, 164
    click
}
betSelect(){
    MouseMove, 507,712
    click
}
moveSpinF(){
    MouseMove, 1095, 973
    click
}
RLR()
        {
            if (b1>125)
            {
                statistics()
                Reload
            }
            Loop
            {
                
                A1()
                A2()
                A4()
                A8()
                A16()
                A32()
                A64()
                A128()
                A256()
                A512()
                A1024()
                A2048()
                A4096()
                blackV := 0
                findColorRed()
                If (ErrorLevel=2)
                    MsgBox, There was some sort of problem at Red color
                else if (ErrorLevel=1)
                {
                    findColorBlack()
                    If (ErrorLevel=2)
                    MsgBox, There was some sort of problem at Black color
                    else if (ErrorLevel=1)
                    {
                        findColorGreen()
                        if ErrorLevel=2
                        MsgBox, There was some sort of problem at green color
                        else if ErrorLevel=1
                        {
                            colorWin()
                            moveRed()
                            moveSpin()
                            sleepAfterRotate(Sleeping)
                            break
                        }
                        else
                        {
                            colorDidNotWin()
                            A4096()
                            moveRed()
                            V32()
                            moveSpin()
                            sleepAfterRotate(Sleeping)
                            break
                        }
                    }
                    else
                    {
                        colorDidNotWin()
                        A4096()
                        moveRed()
                        V32()
                        moveSpin()
                        sleepAfterRotate(Sleeping)
                        break
                    }
                }
                else
                {
                    colorWin()
                    moveRed()
                    moveSpin()
                    sleepAfterRotate(Sleeping)
                    redV++
                    break
                }
            }
        }

RLRF(){
    i:=1
    moveRed()
    sleep, 300
    moveSpin()
}
RLBF(){
    i:=1
    moveBlack()
    sleep, 300
    moveSpin()
}
         RLB()
{
    Loop
    {
        A1()
        A2()
        A4()
        A8()
        A16()
        A32()
        A64()
        A128()
        A256()
        A512()
        A1024()
        A2048()
        A4096()
        redV := 0
        findColorBlack()
        If (ErrorLevel=2)
            MsgBox, There was some sort of problem at Red color
        else if (ErrorLevel=1)
        {
            findColorRed()
            If (ErrorLevel=2)
            MsgBox, There was some sort of problem at Black color
            else if (ErrorLevel=1)
            {
                findColorGreen()
                if ErrorLevel=2
                MsgBox, There was some sort of problem at green color
                else if ErrorLevel=1
                {
                    colorWin()
                    moveBlack()
                    moveSpin()
                    sleepAfterRotate(Sleeping)
                    break
                }
                else
                {
                    colorDidNotWin()
                    A4096()
                    moveBlack()
                    V32()
                    moveSpin()
                    sleepAfterRotate(Sleeping)
                    break
                }
            }
            else
            {
                colorDidNotWin()
                A4096()
                moveBlack()
                V32()
                moveSpin()
                sleepAfterRotate(Sleeping)
                break
            }
        }
        else
        {
            colorWin()
            moveBlack()
            moveSpin()
            sleepAfterRotate(Sleeping)
            blackV++
            break
        }
    }
}
;**************************************
;                 Terminarea Functiilor

;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


;Main Script

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                              $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;     $$$$$$$$$$$$$$$$$$$$$$$$$ Schimba Functiile de mai jos cu coordonatele corespunzatoare site-ului respectiv :) $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;                                               $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 first_start:
 {
    fullScreenOut()
    S4(s4)
    logOut()
    S2(s2)
    altF4()
    S4(s4)
    openChrome()
    S4(s1)
    clickPlayGame()
    S4(s3)
    logIn()
    S4(s3)
    clickPlayGame()
    S4(s3)
    exitDialog()
    S4(s4)
    flashAccept()
    S4(s2)
    clickPlayGame()
    s4(s2)
    fullScreenIn()
    S4(s2)
    betSelect()
    S4(s4)
    moveRed()
    S4(s4)
    moveSpinF()
    S4(s3)
 }
RLRF()
forRed:
for index, element in RedVMax
    {
        if (redV < element)
        {
            RLR()
            goto, forRed
        }
        Else
        {
            RLBF()
            sleepAfterRotate(Sleeping)
            goto, forBlack
        }
    }
   
forBlack:
{
    for index, element in BlackVMax
    {
        if (blackV < element) 
        {
            RLB()
            goto, forBlack
        }
        Else
        {
            RLRF()
            sleepAfterRotate(Sleeping)
            goto, forRed
        }
    }
}
^x::
Pause

^Z::
statistics()
ExitApp