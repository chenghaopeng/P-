VERSION 5.00
Begin VB.UserControl PButton 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00F2AF00&
   ClientHeight    =   615
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1005
   MousePointer    =   1  'Arrow
   ScaleHeight     =   615
   ScaleWidth      =   1005
   Begin P�ؼ���.PUIMgr PM 
      Left            =   480
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
   End
   Begin VB.PictureBox TPic 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   375
      Index           =   0
      Left            =   240
      ScaleHeight     =   375
      ScaleWidth      =   495
      TabIndex        =   1
      Top             =   0
      Visible         =   0   'False
      Width           =   495
      Begin VB.PictureBox TPic 
         AutoRedraw      =   -1  'True
         BorderStyle     =   0  'None
         Height          =   135
         Index           =   1
         Left            =   0
         ScaleHeight     =   135
         ScaleWidth      =   135
         TabIndex        =   2
         Top             =   0
         Width           =   135
      End
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   480
      Top             =   120
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   120
      Top             =   120
   End
   Begin VB.Label FontTmp 
      BeginProperty Font 
         Name            =   "���� Light"
         Size            =   11.25
         Charset         =   134
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   120
      TabIndex        =   3
      Top             =   0
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape Shape1 
      Height          =   615
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Height          =   180
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   90
   End
End
Attribute VB_Name = "PButton"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'������������������洢���Եı�������������������������������������������������������������������������������������������������������������������
Dim C_Color_Back As OLE_COLOR '������ɫ
Dim C_Color_Back_Down As OLE_COLOR '��갴��ʱ�ı�����ɫ
Dim C_Color_Begin As OLE_COLOR '���俪ʼ����ɫ
Dim C_Color_End As OLE_COLOR '�����������ɫ
Dim C_Color_Text As OLE_COLOR '��ť�ı�����ɫ
Dim C_Color_Text_MouseMoved As OLE_COLOR '������ť�ı�����ɫ
Dim C_Text As String '�ı�
Dim C_Font As Font '����
Dim C_Is_Enabled As Boolean '�Ƿ����
Dim C_Style_Border As Border '�߿���ʽ
Dim C_Color_Border As OLE_COLOR '�߿���ɫ
Dim C_Can_Text_Move As Boolean '��갴���ı��������½��ƶ�
Dim C_Color_Back_ChangeSpeed As Integer '�����ٶ�
Dim C_Text_Deviate_X As Integer 'ƫ���X����
Dim C_Text_Deviate_Y As Integer 'ƫ���Y����
Dim C_Color_Back_TransparentDegree As Integer '�����Ƿ񱳾�͸��
Dim C_Is_Text_Transparent As Boolean '�����Ƿ�����͸��
'������������������ʹ��������ı�������������������������������������������������������������������������������������������������������������������
Dim State As Integer '0���κ� 1���� 2����+����
'������������������߿���ʽ��ö��������������������������������������������������������������������������������������������������������������������
Public Enum Border
    None = 0
    Opposite = 1
    Custom = 2
End Enum
'�������������������¼�����������������������������������������������������������������������������������������������������������������
Public Event Click() '�����¼�
Public Event DblClick() '˫���¼�
Public Event MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '��갴���¼�
Public Event MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '��괥���¼�
Public Event MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) '��굯���¼�
'���������������ػ棨ˢ�£����̡���������������������������������������������������������������������������������������������������������������
Public Sub Refresh()
    Cls '���
    Dim i As Long
    If C_Color_Back_TransparentDegree = 100 Then
        If BeAbleToBeBackTransparent Then
            UserControl.PaintPicture UserControl.Extender.Container.Image, 0, 0, UserControl.Width, UserControl.Height, UserControl.Extender.Left, UserControl.Extender.Top, UserControl.Width, UserControl.Height
        End If
        If Not C_Is_Text_Transparent Then DrawTextInUsercontrol
    Else
        If BeAbleToBeBackTransparent Then
            TPic(0).Cls
            TPic(1).Cls
            TPic(0).Width = UserControl.Width
            TPic(0).Height = UserControl.Height
            TPic(1).Width = UserControl.Width
            TPic(1).Height = UserControl.Height
            TPic(0).PaintPicture UserControl.Extender.Container.Image, 0, 0, UserControl.Width, UserControl.Height, UserControl.Extender.Left, UserControl.Extender.Top, UserControl.Width, UserControl.Height
            TPic(1).BackColor = UserControl.BackColor
            Set TPic(1).Font = C_Font
            If State = 0 Then
                TPic(1).ForeColor = C_Color_Text
            Else
                TPic(1).ForeColor = C_Color_Text_MouseMoved
            End If
            If (State = 0) Or (State = 1) Then '���û�а���
                TPic(1).CurrentX = (UserControl.Width - Label1.Width) / 2 + C_Text_Deviate_X * 15
                TPic(1).CurrentY = (UserControl.Height - Label1.Height) / 2 + C_Text_Deviate_Y * 15 '��ӡ������λ��
            ElseIf (State = 2) Then
                If C_Can_Text_Move Then
                    TPic(1).CurrentX = (UserControl.Width - Label1.Width) / 2 + 30 + C_Text_Deviate_X * 15
                    TPic(1).CurrentY = (UserControl.Height - Label1.Height) / 2 + 30 + C_Text_Deviate_Y * 15 '��ӡ������ƫ����λ��
                Else
                    TPic(1).CurrentX = (UserControl.Width - Label1.Width) / 2 + C_Text_Deviate_X * 15
                    TPic(1).CurrentY = (UserControl.Height - Label1.Height) / 2 + C_Text_Deviate_Y * 15 '��ӡ������λ��
                End If
            End If
            If C_Is_Text_Transparent Then
                TPic(1).Print Label1 '��ӡ�ı�
                PM.ControlTransparent TPic(0), TPic(1), Int(C_Color_Back_TransparentDegree / 100 * 255)
            Else
                PM.ControlTransparent TPic(0), TPic(1), Int(C_Color_Back_TransparentDegree / 100 * 255)
                TPic(1).Print Label1 '��ӡ�ı�
            End If
            Set UserControl.Picture = TPic(1).Image
        Else
            DrawTextInUsercontrol
        End If
    End If
End Sub

Private Function BeAbleToBeBackTransparent() As Boolean
    On Error GoTo Err
    Dim pppp As StdPicture
    Set pppp = UserControl.Extender.Container.Image
    BeAbleToBeBackTransparent = True
    Exit Function
Err:
    BeAbleToBeBackTransparent = False
End Function

Private Sub DrawTextInUsercontrol()
    Set UserControl.Font = C_Font
    If State = 0 Then
        UserControl.ForeColor = C_Color_Text
    Else
        UserControl.ForeColor = C_Color_Text_MouseMoved
    End If
    If (State = 0) Or (State = 1) Then '���û�а���
        UserControl.CurrentX = (UserControl.Width - Label1.Width) / 2 + C_Text_Deviate_X * 15
        UserControl.CurrentY = (UserControl.Height - Label1.Height) / 2 + C_Text_Deviate_Y * 15 '��ӡ������λ��
    ElseIf (State = 2) Then
        If C_Can_Text_Move Then
            UserControl.CurrentX = (UserControl.Width - Label1.Width) / 2 + 30 + C_Text_Deviate_X * 15
            UserControl.CurrentY = (UserControl.Height - Label1.Height) / 2 + 30 + C_Text_Deviate_Y * 15 '��ӡ������ƫ����λ��
        Else
            UserControl.CurrentX = (UserControl.Width - Label1.Width) / 2 + C_Text_Deviate_X * 15
            UserControl.CurrentY = (UserControl.Height - Label1.Height) / 2 + C_Text_Deviate_Y * 15 '��ӡ������λ��
        End If
    End If
    UserControl.Print Label1 '��ӡ�ı�
End Sub
'���������������������ԡ���������������������������������������������������������������������������������������������������������������
Public Property Get Is_Enabled() As Boolean '�Ƿ���Ч
    Is_Enabled = C_Is_Enabled
End Property

Public Property Let Is_Enabled(ByVal vNewValue As Boolean)
    C_Is_Enabled = vNewValue
    PropertyChanged "Is_Enabled"
End Property

Public Property Get Font() As Font '����
    Set Font = C_Font
End Property

Public Property Set Font(ByVal vNewValue As Font)
    Set C_Font = vNewValue
    Set Label1.Font = vNewValue
    Refresh
    PropertyChanged "Font"
End Property

Public Property Get Text() As String '�ı�
    Text = C_Text
End Property

Public Property Let Text(ByVal vNewValue As String)
    C_Text = vNewValue
    Label1 = vNewValue
    Refresh
    PropertyChanged "Text"
End Property

Public Property Get Color_Back() As OLE_COLOR '������ɫ
    Color_Back = C_Color_Back
End Property

Public Property Let Color_Back(ByVal vNewValue As OLE_COLOR)
    C_Color_Back = vNewValue
    UserControl.BackColor = vNewValue
    C_Color_Begin = C_Color_Back
    PropertyChanged "Color_Begin"
    Refresh
    PropertyChanged "Color_Back"
End Property

Public Property Get Color_Back_Down() As OLE_COLOR '��갴��ʱ������ɫ
    Color_Back_Down = C_Color_Back_Down
End Property

Public Property Let Color_Back_Down(ByVal vNewValue As OLE_COLOR)
    C_Color_Back_Down = vNewValue
    PropertyChanged "Color_Back_Down"
End Property

Public Property Get Color_Begin() As OLE_COLOR '���俪ʼ����ɫ
    Color_Begin = C_Color_Begin
End Property

Public Property Let Color_Begin(ByVal vNewValue As OLE_COLOR)
    C_Color_Begin = C_Color_Back
    PropertyChanged "Color_Begin"
End Property

Public Property Get Color_End() As OLE_COLOR '�����������ɫ
    Color_End = C_Color_End
End Property

Public Property Let Color_End(ByVal vNewValue As OLE_COLOR)
    C_Color_End = vNewValue
    PropertyChanged "Color_End"
End Property

Public Property Get Color_Text() As OLE_COLOR '�ı���ɫ
    Color_Text = C_Color_Text
End Property

Public Property Let Color_Text(ByVal vNewValue As OLE_COLOR)
    C_Color_Text = vNewValue
    Refresh
    PropertyChanged "Color_Text"
End Property

Public Property Get Color_Text_MouseMoved() As OLE_COLOR '�������ı���ɫ
    Color_Text_MouseMoved = C_Color_Text_MouseMoved
End Property

Public Property Let Color_Text_MouseMoved(ByVal vNewValue As OLE_COLOR)
    C_Color_Text_MouseMoved = vNewValue
    Refresh
    PropertyChanged "Color_Text_MouseMoved"
End Property

Public Property Get Style_Border() As Border '�߿���ʽ
    Style_Border = C_Style_Border
End Property

Public Property Let Style_Border(ByVal vNewValue As Border)
    C_Style_Border = vNewValue
    PropertyChanged "Style_Border"
End Property

Public Property Get Color_Border() As OLE_COLOR '�߿���ɫ
    Color_Border = C_Color_Border
End Property

Public Property Let Color_Border(ByVal vNewValue As OLE_COLOR)
    C_Color_Border = vNewValue
    PropertyChanged "Color_Border"
End Property

Public Property Get Can_Text_Move() As Boolean '��갴���ı��������½��ƶ�
    Can_Text_Move = C_Can_Text_Move
End Property

Public Property Let Can_Text_Move(ByVal vNewValue As Boolean)
    C_Can_Text_Move = vNewValue
    PropertyChanged "Can_Text_Move"
End Property

Public Property Get Color_Back_ChangeSpeed() As Integer '��ɫ�������
    Color_Back_ChangeSpeed = C_Color_Back_ChangeSpeed
End Property

Public Property Let Color_Back_ChangeSpeed(ByVal vNewValue As Integer)
    C_Color_Back_ChangeSpeed = vNewValue
    If C_Color_Back_ChangeSpeed < 1 Then C_Color_Back_ChangeSpeed = 1
    If C_Color_Back_ChangeSpeed > 30 Then C_Color_Back_ChangeSpeed = 30
    PropertyChanged "Color_Back_ChangeSpeed"
End Property

Public Property Get Text_Deviate_X() As Integer 'ƫ���X����
    Text_Deviate_X = C_Text_Deviate_X
End Property

Public Property Let Text_Deviate_X(ByVal vNewValue As Integer)
    C_Text_Deviate_X = vNewValue
    Refresh
    PropertyChanged "Text_Deviate_X"
End Property

Public Property Get Text_Deviate_Y() As Integer 'ƫ���Y����
    Text_Deviate_Y = C_Text_Deviate_Y
End Property

Public Property Let Text_Deviate_Y(ByVal vNewValue As Integer)
    C_Text_Deviate_Y = vNewValue
    Refresh
    PropertyChanged "Text_Deviate_Y"
End Property

Public Property Get Color_Back_TransparentDegree() As Integer '�����Ƿ񱳾�͸��
    Color_Back_TransparentDegree = C_Color_Back_TransparentDegree
End Property

Public Property Let Color_Back_TransparentDegree(ByVal vNewValue As Integer)
    C_Color_Back_TransparentDegree = vNewValue
    If C_Color_Back_TransparentDegree < 0 Then C_Color_Back_TransparentDegree = 0
    If C_Color_Back_TransparentDegree > 100 Then C_Color_Back_TransparentDegree = 100
    Refresh
    PropertyChanged "Color_Back_TransparentDegree"
End Property

Public Property Get Is_Text_Transparent() As Boolean '�����Ƿ��ı�͸��
    Is_Text_Transparent = C_Is_Text_Transparent
End Property

Public Property Let Is_Text_Transparent(ByVal vNewValue As Boolean)
    C_Is_Text_Transparent = vNewValue
    PropertyChanged "Is_Text_Transparent"
End Property

Private Sub PM_ColorSmlyIng(nColor As Long)
    UserControl.BackColor = nColor
    Refresh
End Sub

'�������������������¼�����������������������������������������������������������������������������������������������������������������
Private Sub Timer1_Timer() '��ʱ��1�ļ�ʱ�¼�
    Dim E As Long '������ֹ��ɫ
    If State = 2 Then
        E = C_Color_Back_Down '��ֹ��ɫ����갴�±�����ɫ
    ElseIf State = 1 Then '�����괥��
        E = C_Color_End '��ֹ��ɫ�ǽ��������ɫ
    Else '������û�д���
        E = C_Color_Back '��ֹ��ɫ�ǽ��俪ʼ(�ؼ�����)��ɫ
    End If
    PM.ColorSmly UserControl.BackColor, E, C_Color_Back_ChangeSpeed, 1
    Timer1.Enabled = False
End Sub

Private Sub Timer2_Timer()
    If (�ж�����Ƿ�ָ��ָ���ؼ���(UserControl.hWnd) = False) And (State <> 2) Then
        State = 0
        Timer1.Enabled = True '������ʱ��1
        Timer2.Enabled = False '�رռ�ʱ��2
        Shape1.Visible = False '���ر߿�
    End If
End Sub

Private Sub UserControl_Click() '�ؼ��ĵ����¼�
    If Is_Enabled = True Then RaiseEvent Click '���������¼�
End Sub

Private Sub UserControl_DblClick() '�ؼ���˫���¼�
    If Is_Enabled = True Then RaiseEvent DblClick '����˫���¼�
End Sub

Private Sub UserControl_Initialize() '�ؼ��ļ����¼�
    C_Is_Enabled = True '����ÿ�����Եĳ�ʼֵ
    C_Color_Back = &HF2AF00
    C_Color_Back_Down = &HF2AF00
    C_Color_Begin = &HF2AF00
    C_Color_End = &HFF7402
    C_Color_Text = &H0&
    C_Color_Text_MouseMoved = &HFFFFFF
    C_Text = "PButton"
    Set C_Font = FontTmp.Font
    C_Style_Border = 0
    C_Color_Border = &H0&
    C_Color_Back_ChangeSpeed = 10
    C_Text_Deviate_X = 0
    C_Text_Deviate_Y = 0
    Label1 = "PButton" '����ÿ������
    Set Label1.Font = C_Font
    C_Color_Back_TransparentDegree = 0
    C_Is_Text_Transparent = True
    State = 0
    Refresh
End Sub

Private Sub UserControl_KeyDown(KeyCode As Integer, Shift As Integer) '�ؼ��ļ��̰����¼�
    If KeyCode = 32 Or KeyCode = 13 Then '������µļ��ǻس���ո�
        If Is_Enabled = True Then '����ؼ���Ч
            State = 2 '��갴��
            Timer1.Enabled = True '�򿪼�ʱ��1
            Timer2.Enabled = True '�򿪼�ʱ��2
            Refresh 'ˢ��
        End If
    End If
End Sub

Private Sub UserControl_KeyUp(KeyCode As Integer, Shift As Integer) '�ؼ��ļ��̵����¼�
    If KeyCode = 32 Or KeyCode = 13 Then '������µļ��ǻس���ո�
        If Is_Enabled = True Then '����ؼ���Ч
            State = 0
            Refresh 'ˢ��
            RaiseEvent Click '���������¼�
        End If
    End If
End Sub

Private Sub UserControl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '�ؼ�����갴���¼�
    If Is_Enabled = True Then '����ؼ���Ч
        State = 2 '��갴��
        Timer1.Enabled = True '�򿪼�ʱ��1
        Timer2.Enabled = True '�򿪼�ʱ��2
        Refresh 'ˢ��
        RaiseEvent MouseDown(Button, Shift, X, Y) '������갴���¼�
    End If
End Sub

Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '�ؼ�����괥���¼�
    If Is_Enabled = True Then '����ؼ���Ч
        If State <> 2 Then State = 1  '��괥��
        Timer1.Enabled = True '�򿪼�ʱ��1
        Timer2.Enabled = True '�򿪼�ʱ��2
        Shape1.Height = UserControl.Height 'ʹ�߿��С��ؼ���Сһ��
        Shape1.Width = UserControl.Width
        Select Case C_Style_Border '��������۱߿���ʽ
        Case 0 '�ޱ߿�
            '
        Case 1 '���������ɫ���෴ɫ
            Shape1.BorderColor = RGB(Abs(255 - C_Color_End Mod 256), Abs(255 - (C_Color_End Mod 65536) \ 256), Abs(255 - C_Color_End \ 65536))
            Shape1.Visible = True
        Case 2 '�Զ������ɫ
            Shape1.BorderColor = C_Color_Border
            Shape1.Visible = True
        End Select
        RaiseEvent MouseMove(Button, Shift, X, Y) '������괥���¼�
    End If
End Sub

Private Sub UserControl_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) '�ؼ�����굯���¼�
    If Is_Enabled = True Then
        State = 1 '���û�а���
        Refresh 'ˢ��
        RaiseEvent MouseUp(Button, Shift, X, Y) '������굯���¼�
    End If
End Sub

Private Sub UserControl_ReadProperties(PropBag As PropertyBag) '�ؼ��Ķ�ȡ�����¼�
    C_Color_Back = PropBag.ReadProperty("Color_Back", &HF2AF00) '��ȡ�������Ժͳ�ʼֵ
    C_Color_Back_Down = PropBag.ReadProperty("Color_Back_Down", &HF2AF00)
    C_Color_Begin = PropBag.ReadProperty("Color_Begin", &HF2AF00)
    C_Color_End = PropBag.ReadProperty("Color_End", &HFF7402)
    C_Color_Text = PropBag.ReadProperty("Color_Text", &H0&)
    C_Color_Text_MouseMoved = PropBag.ReadProperty("Color_Text_MouseMoved", &HFFFFFF)
    C_Text = PropBag.ReadProperty("Text", "PButton")
'    C_Font_Name = PropBag.ReadProperty("Font_Name", "΢���ź�")
'    C_Font_Size = PropBag.ReadProperty("Font_Size", 11)
'    C_Font_Bold = PropBag.ReadProperty("Font_Bold", False)
'    C_Font_Italic = PropBag.ReadProperty("Font_Italic", False)
'    C_Font_Underline = PropBag.ReadProperty("Font_Underline", False)
    Set C_Font = PropBag.ReadProperty("Font", FontTmp.Font)
    C_Is_Enabled = PropBag.ReadProperty("Is_Enabled", True)
    C_Style_Border = PropBag.ReadProperty("Style_Border", 0)
    C_Color_Border = PropBag.ReadProperty("Color_Border", &H0&)
    C_Can_Text_Move = PropBag.ReadProperty("Can_Text_Move", True)
    C_Color_Back_ChangeSpeed = PropBag.ReadProperty("Color_Back_ChangeSpeed", 10)
    C_Text_Deviate_X = PropBag.ReadProperty("Text_Deviate_X", 0)
    C_Text_Deviate_Y = PropBag.ReadProperty("Text_Deviate_Y", 0)
    C_Color_Back_TransparentDegree = PropBag.ReadProperty("Color_Back_TransparentDegree", 0)
    C_Is_Text_Transparent = PropBag.ReadProperty("Is_Text_Transparent", True)
    UserControl.BackColor = C_Color_Back '���ø�������
    Label1 = C_Text
    Set Label1.Font = C_Font
    Refresh 'ˢ��
End Sub

Private Sub UserControl_Resize() '�ؼ��Ĵ�С�ı��¼�
    Refresh 'ˢ��
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag) '�ؼ���д�����¼�
    Call PropBag.WriteProperty("Color_Back", C_Color_Back, &HF2AF00) 'д��������Ժͳ�ʼֵ
    Call PropBag.WriteProperty("Color_Back_Down", C_Color_Back_Down, &HF2AF00)
    Call PropBag.WriteProperty("Color_Begin", C_Color_Begin, &HF2AF00)
    Call PropBag.WriteProperty("Color_End", C_Color_End, &HFF7402)
    Call PropBag.WriteProperty("Color_Text", C_Color_Text, &H0&)
    Call PropBag.WriteProperty("Color_Text_MouseMoved", C_Color_Text_MouseMoved, &HFFFFFF)
    Call PropBag.WriteProperty("Text", C_Text, "PButton")
    Call PropBag.WriteProperty("Font", C_Font, FontTmp.Font)
    Call PropBag.WriteProperty("Is_Enabled", C_Is_Enabled, True)
    Call PropBag.WriteProperty("Style_Border", C_Style_Border, 0)
    Call PropBag.WriteProperty("Color_Border", C_Color_Border, &H0&)
    Call PropBag.WriteProperty("Can_Text_Move", C_Can_Text_Move, True)
    Call PropBag.WriteProperty("Color_Back_ChangeSpeed", C_Color_Back_ChangeSpeed, 10)
    Call PropBag.WriteProperty("Text_Deviate_X", C_Text_Deviate_X, 0)
    Call PropBag.WriteProperty("Text_Deviate_Y", C_Text_Deviate_Y, 0)
    Call PropBag.WriteProperty("Color_Back_TransparentDegree", C_Color_Back_TransparentDegree, 0)
    Call PropBag.WriteProperty("Is_Text_Transparent", C_Is_Text_Transparent, True)
End Sub
'��������������The End����������������������������������������������������������������������������������������������������������������
