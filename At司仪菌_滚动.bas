Attribute VB_Name = "At˾�Ǿ�_����"
'��ģ��������ԡ�����˼�塷
'��������������������������������������������������������������������������������������������������������������������������
'�ܼ���һ��ģ�鲢¼�����
Option Explicit
Public Const WM_MOUSEWHEEL = &H20A
Public Const WM_KEYUP = &H101
' -- ����Win32Api �C
'�õ�Ĭ�ϵĴ�����Ϣ������̵ĵ�ַ��Ҫ��API
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
'����һ���µĴ�����Ϣ������̵ĵ�ַ��Ҫ��API
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'��ָ���Ĵ�����Ϣ������̴�����Ϣ��Ҫ��API
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long

Const GWL_WNDPROC = (-4&)
Dim PrevWndProc&
Private Const WM_DESTROY = &H2
Private Const WM_DRAWITEM = &H2B

'�µĴ�����Ϣ������̣��������뵽Ĭ�ϴ������֮ǰ
Private Function SubWndProc(ByVal hWnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
If Msg = WM_DESTROY Then Terminate (hWnd)


If Msg = WM_MOUSEWHEEL Then
If (wParam And &HFF000000) = &H0& Then
SubWndProc = CallWindowProc(PrevWndProc, hWnd, WM_KEYUP, &HFF00, 0&)
Else
SubWndProc = CallWindowProc(PrevWndProc, hWnd, WM_KEYUP, &HFF01, 0&)
End If
Exit Function
End If

'����Ĭ�ϵĴ��ڴ������

SubWndProc = CallWindowProc(PrevWndProc, hWnd, Msg, wParam, lParam)
End Function
'���໯���
Public Sub Init(hWnd As Long)
PrevWndProc = SetWindowLong(hWnd, GWL_WNDPROC, AddressOf SubWndProc)
End Sub
'���໯����
Public Sub Terminate(hWnd As Long)
Call SetWindowLong(hWnd, GWL_WNDPROC, PrevWndProc)
End Sub

