Attribute VB_Name = "Functions"
Declare Function WindowFromPoint Lib "user32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long
Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Type POINTAPI
    x As Long
    y As Long
End Type
Public Declare Function URLDownloadToFile Lib "urlmon" Alias "URLDownloadToFileA" (ByVal pCaller As Long, ByVal szURL As String, ByVal szFileName As String, ByVal dwReserved As Long, ByVal lpfnCB As Long) As Long
Public Const ERROR_SUCCESS As Long = 0
Public Const BINDF_GETNEWESTVERSION As Long = &H10
Public Const INTERNET_FLAG_RELOAD As Long = &H80000000
Declare Function AlphaBlend Lib "msimg32.dll" (ByVal hdcDest As Long, ByVal nXOriginDest As Long, ByVal nYOriginDest As Long, ByVal nWidthDest As Long, ByVal hHeightDest As Long, ByVal hdcSrc As Long, ByVal nXOriginSrc As Long, ByVal nYOriginSrc As Long, ByVal nWidthSrc As Long, ByVal nHeightSrc As Long, ByVal BLENDFUNCTION As Long) As Long
Declare Sub RtlMoveMemory Lib "kernel32" (Destination As Any, Source As Any, ByVal Length As Long)
Public Type BLENDFUNCTION
    BlendOp As Byte
    BlendFlags As Byte
    SourceConstantAlpha As Byte
    AlphaFormat As Byte
End Type
Public Const AC_SRC_OVER = &H0
Public Const LWA_COLORKEY = &H1
Public Const LWA_ALPHA = &H2
Public Const GWL_EXSTYLE = (-20)
Public Const WS_EX_LAYERED = &H80000
Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hWnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByRef lpvParam As Any, ByVal fuWinIni As Long) As Long
Public Const SPI_GETWORKAREA = 48
Public Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)


Public Function GetTaskbarHeight() As Integer
    Dim rectVal As RECT
    SystemParametersInfo SPI_GETWORKAREA, 0, rectVal, 0
    GetTaskbarHeight = ((Screen.Height / Screen.TwipsPerPixelX) - rectVal.Bottom) * Screen.TwipsPerPixelX
End Function

Public Function �ж�����Ƿ�ָ��ָ���ؼ���(hwn As Long) As Boolean
    If hwn = GetPointhWnd Then �ж�����Ƿ�ָ��ָ���ؼ��� = True Else: �ж�����Ƿ�ָ��ָ���ؼ��� = False
End Function

Public Function GetPointhWnd() As Long
    Dim NowPOINT As POINTAPI
    GetCursorPos NowPOINT
    GetPointhWnd = WindowFromPoint(NowPOINT.x, NowPOINT.y)
End Function

Public Function GetHtmlCodeByXMLHTTP(ByVal sUrl As String) As String
    Dim XmlHttp As Object
    Set XmlHttp = CreateObject("Microsoft.XMLHTTP")
    XmlHttp.open "POST", sUrl, False
    XmlHttp.send
    GetHtmlCodeByXMLHTTP = StrConv(XmlHttp.ResponseBody, vbUnicode)
    Set XmlHttp = Nothing
End Function

'�˴������Ϊһ�����ֵļ����ֶ�
'���Ҫ�����ַ������Խ��ַ�תΪASCII���ټ���
Public Function Hex10_to_300(ByVal Num As Long) As String '����
    Dim Neg As Boolean '�������
    Dim s As String '������/���ܵĺ���
    s = "Ҷ����ռ�Ŷ�����ֻ߲��ʷ��ߴ��̨߳̾��˾��ߵ߶߷���������¼�����ͬ���ϳ�����߸�����߹��ߺ�������߼߽�Ӵ���֨߾��߻Ż�Ʒ��߿����ѽ��Ա�����������ȷ�Ǻ�˸������ǅ��؅��߿��ą�����˱����è���غ��ŅɅ�ζ���������������ǅ���������������ʺ�զ֪���͸����˾��������̅�ӽ���ͅ�ؽ�ο��ޅ��������������պ�_�ӆE�̅��A�������������څ���Ʒ�����ۆF������B���߻�������M��������ҧ�Ⱗ�ɿȆD������������Ӵ�t�u�y��q���U���벸�����|������ɺƆZ���Ｆ������i��Ŷ�r�𻽆~������������w����������������������ž�Ć������Ȇ���������������ɶ���ن�Ψ��ơ��������������आ����ކ������Х৹�����ϲ����૆�"
    Neg = False '�������
    If Num < 0 Then '�ж�����
        Neg = True '���Ϊ����
        Num = -Num '����������
    End If
    Do
        Hex10_to_300 = Mid(s, Num Mod 300 + 1, 1) & Hex10_to_300 'ת������
        Num = Num \ 300
    Loop Until Num = 0
    If Neg = True Then Hex10_to_300 = "��" & Hex10_to_300 '����Ǹ����ͼ�ǰ׺���ݡ�
End Function

Public Function Hex300_to_10(ByVal Num As String) As Long '����
    Dim Neg As Boolean '�������
    Dim i As Integer '���ܵĽ���
    Dim s As String '������/���ܵĺ���
    s = "Ҷ����ռ�Ŷ�����ֻ߲��ʷ��ߴ��̨߳̾��˾��ߵ߶߷���������¼�����ͬ���ϳ�����߸�����߹��ߺ�������߼߽�Ӵ���֨߾��߻Ż�Ʒ��߿����ѽ��Ա�����������ȷ�Ǻ�˸������ǅ��؅��߿��ą�����˱����è���غ��ŅɅ�ζ���������������ǅ���������������ʺ�զ֪���͸����˾��������̅�ӽ���ͅ�ؽ�ο��ޅ��������������պ�_�ӆE�̅��A�������������څ���Ʒ�����ۆF������B���߻�������M��������ҧ�Ⱗ�ɿȆD������������Ӵ�t�u�y��q���U���벸�����|������ɺƆZ���Ｆ������i��Ŷ�r�𻽆~������������w����������������������ž�Ć������Ȇ���������������ɶ���ن�Ψ��ơ��������������आ����ކ������Х৹�����ϲ����૆�"
    Neg = False '�������
    If Left(Num, 1) = "��" Then '�ж�����
        Neg = True '���Ϊ����
        Num = Replace(Num, "��", "") '����������
    End If
    For i = 1 To Len(Num) 'ת������
        Hex300_to_10 = Hex300_to_10 * 300 + (InStr(s, Mid(Num, i, 1)) - 1)
    Next
    If Neg = True Then Hex300_to_10 = -Hex300_to_10  '����Ǹ�����ȡ������෴��
End Function

Public Function Encrypt(ByVal strText As String) As String
    If strText = "" Then Exit Function
    Encrypt = Hex10_to_300(Asc(Mid(strText, 1, 1)))
    Dim i As Long
    For i = 2 To Len(strText)
        Encrypt = Encrypt & "��" & Hex10_to_300(Asc(Mid(strText, i, 1)))
    Next
End Function

Public Function Declassified(ByVal strText As String) As String
    If strText = "" Then Exit Function
    Dim s() As String, i As Long
    s = Split(strText, "��")
    For i = 0 To UBound(s)
        Declassified = Declassified & Chr(Hex300_to_10(s(i)))
    Next
End Function
