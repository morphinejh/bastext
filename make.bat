@echo off
rem Makefile for bastext WINDOWS -----------------------------------------------
set CC=cl
set SRC=main.c wgetopt.c tokens.c tokenize.c dtokeniz.c inmode.c outmode.c select.c t64.c
set CFLAGS=-O2 -W3 /D_CRT_SECURE_NO_WARNINGS

if /I "%1" == "clean" GOTO clean
if /I "%1" == "cleanobjs" GOTO cleanobjs
goto all
rem Main executable ------------------------------------------------------------
:all
    %CC% %CFLAGS% %SRC% /Febastext
	goto done
	
rem Cleanup --------------------------------------------------------------------
:cleanobjs
    del *.obj
	goto done
:clean
    del *.obj
    del bastext.exe
	goto done
:done
