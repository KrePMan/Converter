﻿;================================FUNCTIONS==========================================================
;===================================================================================================
ConnectedToInternet(flag=0x40)
{
	Return DllCall("wininet.dll\InternetGetConnectedState", "Str", flag,"Int",0)
}
;===================================================================================================
ELM(ERR,e_msg, e_off=0)
{
	If ERR =1 
	{
		If e_off = 1
		{
			Msgbox, 48, Ошибка, %e_msg%
			return
		}
		else
			Msgbox, 48, Ошибка, %e_msg%
	}
}
;===================================================================================================
functiff(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 14:Show, Hide   ; скрываем окно-слайдер, если оно выдвинуто, при минимизации основного окна
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 14:Show   ; показываем окно-слайдер, если оно было выдвинуто, при восстановлении основного окна
	}
	if (!i || hwnd != hGui1 || k = 1)
		return 
; привязываем окно-слайдер к нижней границе основного окна   
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 14:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " h85 w300" 
}
;===================================================================================================
funcpdf(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 13:Show, Hide   ; скрываем окно-слайдер, если оно выдвинуто, при минимизации основного окна
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 13:Show   ; показываем окно-слайдер, если оно было выдвинуто, при восстановлении основного окна
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
; привязываем окно-слайдер к нижней границе основного окна   
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 13:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " h90 w300" 
}
;== ================================================================================================
funcdoc(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 11:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 11:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
; привязываем окно-слайдер к нижней границе основного окна
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 11:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h100" 		   
}
;== ================================================================================================
;== ================================================================================================
funcpng(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
		if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
			Gui, 22:Show, Hide
		if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
			Gui, 22:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 22:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h85" 		   
}
;===================================================================================================
funcpp(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 23:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 23:Show
	}
	if (!i || hwnd != hGui1 || k = 1)  
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 23:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105" 		   
}
;===================================================================================================
funcpt(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 24:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 24:Show
	}
	if (!i || hwnd != hGui1 || k = 1) 
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 24:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105" 		   
}
;== ================================================================================================
;== ================================================================================================
funcjpg(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 12:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 12:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 12:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h85" 		   
}
;== ================================================================================================
funcpj(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 3:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 3:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 3:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h70" 		   
}
;== ================================================================================================
funcjt(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 4:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 4:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 4:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105" 		   
}
;===================================================================================================
funcjp(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 2:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 2:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 2:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105" 		   
}
;===================================================================================================
funczp(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 9:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 9:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 9:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h80"   
}
;===================================================================================================
funczpsp(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 10:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 10:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 10:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w360 h105"	   
}
;===================================================================================================
funczpz(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 8:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 8:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 8:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105"	   
}
;===================================================================================================
funczj(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 6:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 6:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 6:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105"
}
;===================================================================================================
functj(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 5:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 5:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 5:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
functps(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 15:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 15:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 15:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
functpn(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 16:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 16:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 16:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
functp(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 17:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 17:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return   
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 17:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
functi(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 18:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 18:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 17:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
functe(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
		if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
			Gui, 19:Show, Hide
		if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
			Gui, 19:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 19:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
functb(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 20:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 20:Show
	}
	if (!i || hwnd != hGui1 || k = 1)
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 20:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h115"  
}
;===================================================================================================
funczt(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 7:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 7:Show
	}
	if (!i || hwnd != hGui1 || k = 1) 
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 7:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h105"
}
;===================================================================================================
funcdt(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
	if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
		Gui, 21:Show, Hide
	if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
		Gui, 21:Show
	}
	if (!i || hwnd != hGui1 || k = 1) 
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 21:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h140"
}
;===================================================================================================
funcbas(wp, lp, msg, hwnd)
{
	global hGui1, WI, i
	static k
	if (msg = 0x112)
	{
		if (wp = 0xF020 && k := 1)   ; SC_MINIMIZE = 0xF020
			Gui, 25:Show, Hide
		if (wp = 0xF120 && !(k := 0) && i)   ; SC_RESTORE = 0xF120
			Gui, 25:Show
	}
	if (!i || hwnd != hGui1 || k = 1) 
		return
	DllCall("GetWindowInfo", Ptr, hGui1, Ptr, &WI)
	Gui, 25:Show, % "x" NumGet(WI, 20, "UInt") " y" NumGet(WI, 16, "UInt") " w300 h100"
}
;===================================================================================================
WaitProgress(runing = 0, ALE = 0, EL = 0)
{
	if runing = 1
	{
		Gui, 1:Default
		SB_SetText("Выполнение...", 1)
		GuiControl,, Progr, 25
		sleep 500
		GuiControl,, Progr, 50
	}
	else
	{
		SB_SetText("", 1)
		If ((%ALE% = 0) || (%EL% != ERROR))
		{
			GuiControl,, Progr, 75
			Sleep 500
			GuiControl,, Progr, 100
			MsgBox, 64, Конвертер, Готово!, 1
			GuiControl,, Progr, 0
		}
		Else
		{
			MsgBox, 16, Конвертер, Ошибка выполнения. Код ошибки - %ALE%. Обратитесь к разработчику., 1
			GuiControl,, Progr, 0
		}
	}	
}
;================================FUNCTIONS==========================================================