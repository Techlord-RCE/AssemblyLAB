/*
https://msdn.microsoft.com/en-us/library/windows/desktop/ms645505%28v=vs.85%29.aspx
int WINAPI MessageBox(
  _In_opt_ HWND    hWnd,
  _In_opt_ LPCTSTR lpText,
  _In_opt_ LPCTSTR lpCaption,
  _In_     UINT    uType
);

Type: HWND
A handle to the owner window of the message box to be created. If this parameter is NULL, the message box has no owner window.

Type: LPCTSTR
The message to be displayed. If the string consists of more than one line, you can separate the lines using a carriage return and/or linefeed character between each line.

Type: LPCTSTR
The dialog box title. If this parameter is NULL, the default title is Error.

Type: UINT
The contents and behavior of the dialog box. This parameter can be a combination of flags from the following groups of flags.

MB_OK
The message box contains one push button: OK. This is the default.
*/




.386	;pe x86
.model flat,stdcall
option casemap:none		;To make case-sensitive labels
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib 		;libs to structures,constant variables,api etc..
include \masm32\include\user32.inc
includelib \masm32\lib\user32.lib


.data
MsgBoxCaption  db "BombermanS",0
MsgBoxText       db "B3mB4m,Bomberman,T-Rex",0

.code
start:
invoke MessageBox, NULL, addr MsgBoxText, addr MsgBoxCaption, MB_OK
invoke ExitProcess, NULL
end start 