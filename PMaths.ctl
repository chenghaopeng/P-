VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Begin VB.UserControl PMaths 
   BackColor       =   &H00F2AF00&
   ClientHeight    =   480
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   480
   InvisibleAtRuntime=   -1  'True
   ScaleHeight     =   480
   ScaleWidth      =   480
   Begin MSScriptControlCtl.ScriptControl SC 
      Left            =   -120
      Top             =   -120
      _ExtentX        =   1005
      _ExtentY        =   1005
   End
End
Attribute VB_Name = "PMaths"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public Function Add(strShu1 As String, strShu2 As String) As String
    If (strShu1 = "") Or (strShu2 = "") Then Exit Function
    If (Left(strShu1, 1) = "-") Or (Left(strShu2, 1) = "-") Then Exit Function
    Add = NumToStr(subJia(strShu1, strShu2))
End Function

Public Function Subtract(strShu1 As String, strShu2 As String) As String
    If (strShu1 = "") Or (strShu2 = "") Then Exit Function
    If (Left(strShu1, 1) = "-") Or (Left(strShu2, 1) = "-") Then Exit Function
    Subtract = NumToStr(subJian(strShu1, strShu2))
End Function

Public Function Multiply(strShu1 As String, strShu2 As String) As String
    If (strShu1 = "") Or (strShu2 = "") Then Exit Function
    If (Left(strShu1, 1) = "-" And Left(strShu2, 1) <> "-") Or (Left(strShu1, 1) <> "-" And Left(strShu2, 1) = "-") Then Multiply = "-"
    Multiply = Multiply & NumToStr(subCheng(strShu1, strShu2))
End Function

Public Function Division(strShu1 As String, strShu2 As String) As String
    If (strShu1 = "") Or (strShu2 = "") Then Exit Function
    MsgBox "����ţ������������ã�"
End Function

Public Function VBCodetoNum(Code As String) As Single
    On Error Resume Next
    VBCodetoNum = SC.Eval(Code)
End Function

Private Function subJia(strShu1 As String, strShu2 As String) As Integer()
    Dim Result() As Integer '���Ա�����������
    Dim MaxShu() As Integer '�����нϴ���
    Dim MinShu() As Integer '�����н�С��
    
    If Compare(strShu1, strShu2) Then '�Ƚ�������С
        StrToNum strShu1, MaxShu
        StrToNum strShu2, MinShu
    Else
        StrToNum strShu2, MaxShu
        StrToNum strShu1, MinShu
    End If
    
    Dim i As Long
    
    ReDim Result(UBound(MaxShu) + 1) '�ѽ�������ʼ��Ϊ�ϴ���
    For i = 0 To UBound(MaxShu)
        Result(i) = MaxShu(i)
    Next
    
    For i = 0 To UBound(MinShu) '�ӷ�����
        Result(i) = Result(i) + MinShu(i) 'ÿ��λ���ϵ��������
        Result(i + 1) = Result(i + 1) + Result(i) \ 10 '��λ
        Result(i) = Result(i) Mod 10 '��λ��ȡ��
    Next
    
    For i = 0 To UBound(Result) - 1 '��������������λ���ϵ�����λ
        Result(i + 1) = Result(i + 1) + Result(i) \ 10
        Result(i) = Result(i) Mod 10
    Next
    
    Dim Temp() As Integer 'ɾ����ǰ��0
    Do While Result(UBound(Result)) = 0
        Temp = Result
        ReDim Result(UBound(Result) - 1)
        For i = 0 To UBound(Result)
            Result(i) = Temp(i)
        Next
    Loop
    
    subJia = Result
End Function

Private Function subJian(strShu1 As String, strShu2 As String) As Integer()
    Dim Result() As Integer
    Dim BeijianShu() As Integer
    Dim JianShu() As Integer
    
    Dim Fushu As Boolean '����Ƿ��Ǹ���
    
    If Compare(strShu1, strShu2) Then
        StrToNum strShu1, BeijianShu
        StrToNum strShu2, JianShu
        Fushu = False
    Else
        StrToNum strShu1, JianShu
        StrToNum strShu2, BeijianShu
        Fushu = True
    End If
    
    Dim i As Long
    
    Result = BeijianShu
    
    For i = 0 To UBound(JianShu) '��������
        Result(i) = Result(i) - JianShu(i)
        If Result(i) < 0 Then '������ʱ��λ
            Result(i) = Result(i) + 10
            Result(i + 1) = Result(i + 1) - 1
        End If
    Next
    
    For i = 0 To UBound(Result) - 1 '��������λ
        If Result(i) < 0 Then
            Result(i) = Result(i) + 10
            Result(i + 1) = Result(i + 1) - 1
        End If
    Next
    
    Dim Temp() As Integer
    Do While Result(UBound(Result)) = 0
        If UBound(Result) = 0 Then Exit Do '��ֹ����ȫ��ɾ��
        Temp = Result
        ReDim Result(UBound(Result) - 1)
        For i = 0 To UBound(Result)
            Result(i) = Temp(i)
        Next
    Loop
    
    If Fushu Then Result(UBound(Result)) = -Result(UBound(Result)) '�������Ϸ���
    
    subJian = Result
End Function

Private Function subCheng(strShu1 As String, strShu2 As String) As Integer()
    Dim Result() As Integer
    Dim intShu1() As Integer
    Dim intShu2() As Integer
    
    If Compare(strShu1, strShu2) Then
        StrToNum strShu1, intShu1
        StrToNum strShu2, intShu2
    Else
        StrToNum strShu1, intShu2
        StrToNum strShu2, intShu1
    End If
    
    ReDim Result(Len(strShu1) + Len(strShu2) - 2) '�˷�ʱλ�������������λ��֮��
    
    Dim i As Long, x As Long, y As Long
    
    For x = 0 To UBound(intShu1) '�˷�����
        For y = 0 To UBound(intShu2)
            Result(x + y) = Result(x + y) + intShu1(x) * intShu2(y)
            If (x + y) <> UBound(Result) Then
                Result(x + y + 1) = Result(x + y + 1) + Result(x + y) \ 10
                Result(x + y) = Result(x + y) Mod 10
            End If
        Next
    Next
    
    For i = 0 To UBound(Result) - 1 '��λ
        Result(i + 1) = Result(i + 1) + Result(i) \ 10
        Result(i) = Result(i) Mod 10
    Next
    
    Dim Temp() As Integer
    Do While Result(UBound(Result)) = 0
        Temp = Result
        ReDim Result(UBound(Result) - 1)
        For i = 0 To UBound(Result)
            Result(i) = Temp(i)
        Next
    Loop
    
    subCheng = Result
End Function

Private Function Compare(strShu1 As String, strShu2 As String) As Boolean
    If Len(strShu1) > Len(strShu2) Then Compare = True: Exit Function
    If Len(strShu1) < Len(strShu2) Then Compare = False: Exit Function
    Dim Fushu As Boolean
    If (Left(strShu1, 1) = "-") And (Left(strShu2, 1) = "-") Then
        Fushu = True
        strShu1 = Replace(strShu1, "-", "")
        strShu2 = Replace(strShu2, "-", "")
    End If
    For i = 1 To Len(strShu1)
        If Val(Mid(strShu1, i, 1)) > Val(Mid(strShu2, i, 1)) Then
            Compare = True
            Exit For
        End If
        If Val(Mid(strShu1, i, 1)) < Val(Mid(strShu2, i, 1)) Then
            Compare = False
            Exit For
        End If
    Next
    If Fushu Then Compare = Not (Compare)
End Function

Private Function StrToNum(strShu As String, ByRef intShu() As Integer)
    Dim Length As Long
    Dim i As Long
    Length = Len(strShu) - 1
    ReDim intShu(Length)
    For i = Length To 0 Step -1
        intShu(Length - i) = Val(Mid(strShu, i + 1, 1))
    Next
End Function

Private Function NumToStr(intShu() As Integer) As String
    Dim i As Long
    For i = UBound(intShu) To 0 Step -1
        NumToStr = NumToStr & intShu(i)
    Next
End Function

Private Sub UserControl_Resize()
    UserControl.Width = 480
    UserControl.Height = 480
End Sub
