#AutoIt3Wrapper_UseX64=n ; In order for the x86 DLLs to work
#include "OpenCV-Match_UDF.au3"

_OpenCV_Startup();loads opencv DLLs
_OpenCV_EnableLogging(True,True,True) ;Logs matches, errors in a log file and autoit console output. 


Local $WinHandle = WinGetHandle("NoxPlayer 7")
$iWidth = _WinAPI_GetWindowWidth($WinHandle)
$iHeight = _WinAPI_GetWindowHeight($WinHandle)

$Match1 = _ImageSearch($WinHandle,@ScriptDir&"\Match\1.bmp", 0.70,False,10,500)
If Not @error Then
	_MarkMatch($Match1)
	Sleep(100)
	ControlClick($WinHandle, "", "", "left", 1, $Match1[0], $Match1[1])
EndIf

Sleep(1000)
