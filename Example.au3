#AutoIt3Wrapper_UseX64=n ; In order for the x86 DLLs to work
#include "OpenCV.au3"

_OpenCV_Startup();loads opencv DLLs
_OpenCV_EnableLogging(True,True,True) ;Logs matches, errors in a log file and autoit console output. 


Local $WinHandle = WinGetHandle("NoxPlayer 7")
$iWidth = _WinAPI_GetWindowWidth($WinHandle)
$iHeight = _WinAPI_GetWindowHeight($WinHandle)

Local $val5 = 560 ;ตำแหน่งแกน X ภาพที่ cap จากขนาดของ windown
Local $val6 = 300 ;ตำแหน่งแกน Y ภาพที่ cap จากขนาดของ windown
Local $arry[4] = [560,300,100,100]
$Match1 = _ImageSearch($WinHandle,@ScriptDir&"\Match\1.bmp", 0.70,$arry,10,500)
;$Match1 = _ImageSearch($WinHandle,@ScriptDir&"\Match\1.bmp", 0.70,False,10,500)
If Not @error Then
	_MarkMatch($Match1)
	Sleep(100)
	_Click($WinHandle,$Match1[0], $Match1[1])
EndIf

Sleep(1000)
