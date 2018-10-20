VERSION 5.00
Begin VB.UserControl PVScrollBar 
   BackColor       =   &H00F2AF00&
   ClientHeight    =   3495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   255
   ScaleHeight     =   3495
   ScaleWidth      =   255
   Begin P�ؼ���.PUIMgr PM 
      Left            =   1440
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
   End
   Begin VB.PictureBox Progress 
      BackColor       =   &H00FF7402&
      BorderStyle     =   0  'None
      Height          =   855
      Left            =   0
      ScaleHeight     =   855
      ScaleWidth      =   255
      TabIndex        =   0
      Top             =   0
      Width           =   255
      Begin VB.Shape Shape1 
         Height          =   855
         Left            =   0
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
   End
End
Attribute VB_Name = "PVScrollBar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'������������������洢���Եı�������������������������������������������������������������������������������������������������������������������
Dim C_Color_Top As OLE_COLOR '��������ɫ
Dim C_Color_Back As OLE_COLOR '�����鱳����ɫ
Dim C_Is_Enabled As Boolean '�Ƿ���Ч
Dim C_Value As Single 'ֵ
Dim C_Size As Single '������ռ�ܴ�С�Ķ���
Dim C_Value_Wheel_Change As Single '�����ֹ���ʱ�ı��ֵ
Dim C_Style_Border As Border '�߿���ʽ
Dim C_Color_Border As OLE_COLOR '�߿���ɫ
'�������������������¼�����������������������������������������������������������������������������������������������������������������
Public Event Scroll(NValue As Single) '�����¼�
Public Event Change(NValue As Single) 'ֵ�ı��¼�
Public Event Click() '�����¼�
Public Event DblClick() '˫���¼�
Public Event MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single, NValue As Single) '��갴���¼�,NValueΪ��ֵ
Public Event MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single, NValue As Single) '��괥���¼�,NValueΪ��ֵ
Public Event MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single, NValue As Single) '��굯���¼�,NValueΪ��ֵ
'������������������ʹ��������ı�������������������������������������������������������������������������������������������������������������������
Dim ClickedY As Single '��갴�µ�λ��
Dim GoalY As Single '������Ҫ�����λ��
Dim MouseDowned As Boolean '����Ƿ���
'���������������������ԡ���������������������������������������������������������������������������������������������������������������
Public Property Get Color_Top() As OLE_COLOR '��������ɫ
    Color_Top = C_Color_Top
End Property

Public Property Let Color_Top(ByVal vNewValue As OLE_COLOR)
    C_Color_Top = vNewValue
    Progress.BackColor = C_Color_Top
    PropertyChanged "Color_Top"
End Property

Public Property Get Color_Back() As OLE_COLOR '�����鱳����ɫ
    Color_Back = C_Color_Back
End Property

Public Property Let Color_Back(ByVal vNewValue As OLE_COLOR)
    C_Color_Back = vNewValue
    UserControl.BackColor = vNewValue
    PropertyChanged "Color_Back"
End Property

Public Property Get Is_Enabled() As Boolean '�Ƿ���Ч
    Is_Enabled = C_Is_Enabled
End Property

Public Property Let Is_Enabled(ByVal vNewValue As Boolean)
    C_Is_Enabled = vNewValue
    Progress.Visible = vNewValue
    PropertyChanged "Is_Enabled"
End Property

Public Property Get Value() As Single 'ֵ
    Value = C_Value
End Property

Public Property Let Value(ByVal vNewValue As Single)
    If vNewValue > 1 Then '���ֵ����1
        C_Value = 1
    ElseIf vNewValue < 0 Then '���ֵС��0
        C_Value = 0
    Else
        C_Value = vNewValue '����ֵ
    End If
    PM.MoveSmly Progress, 0, (UserControl.Height - Progress.Height) * C_Value, 10 'ƽ�����ƶ������鵽�ö�λ��
    RaiseEvent Change(C_Value) '����ֵ�ı��¼�
    PropertyChanged "Value"
End Property

Public Property Get Size() As Single '������ռ�ܴ�С�Ķ���
    Size = C_Size
End Property

Public Property Let Size(ByVal vNewValue As Single)
    If vNewValue > 0.8 Then '���ֵ����0.8
        C_Size = 0.8
    ElseIf (vNewValue * UserControl.Height) < 45 Then '���������С��3����
        C_Size = 45 / UserControl.Height
    Else
        C_Size = vNewValue '����ֵ
    End If
    Progress.Height = UserControl.Height * C_Size '���¹������С
    PropertyChanged "Size"
End Property

Public Property Get Value_Wheel_Change() As Single '�����ֹ���ʱ�ı��ֵ
    Value_Wheel_Change = C_Value_Wheel_Change
End Property

Public Property Let Value_Wheel_Change(ByVal vNewValue As Single)
    If vNewValue > 0.5 Then '���ֵ����0.5
        C_Value_Wheel_Change = 0.5
    ElseIf vNewValue < 0.01 Then '���ֵС��0.01
        C_Value_Wheel_Change = 0.01
    Else
        C_Value_Wheel_Change = vNewValue '����ֵ
    End If
    PropertyChanged "Value_Wheel_Change"
End Property

Public Property Get Style_Border() As Border '�߿���ʽ
    Style_Border = C_Style_Border
End Property

Public Property Let Style_Border(ByVal vNewValue As Border)
    C_Style_Border = vNewValue
    PropertyChanged "Style_Border"
End Property

Public Property Get Color_Border() As OLE_COLOR '�߿���ʽ
    Color_Border = C_Color_Border
End Property

Public Property Let Color_Border(ByVal vNewValue As OLE_COLOR)
    C_Color_Border = vNewValue
    PropertyChanged "Color_Border"
End Property
'�������������������¼�����������������������������������������������������������������������������������������������������������������
Private Sub Progress_Click() '������ĵ����¼�
    If Is_Enabled = True Then RaiseEvent Click '���������¼�
End Sub

Private Sub Progress_DblClick() '�������˫���¼�
    If Is_Enabled = True Then RaiseEvent DblClick '����˫���¼�
End Sub

Private Sub Progress_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = -108 Then Shape1.Visible = False
End Sub

Private Sub Progress_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '���������갴���¼�
    If Button = 1 Then ClickedY = Y '�������������,������갴�µ�λ��
    If Is_Enabled = True Then RaiseEvent MouseDown(Button, Shift, X, Y, C_Value) '�����Ч,������갴���¼�
    If Button = 1 Then MouseDowned = True '�������������,��갴��
End Sub

Private Sub Progress_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Reload Progress.hWnd
    If MouseDowned Then
        If (Progress.Top - ClickedY + Y) < 0 Then
'            PM.MoveSmly Progress, 0, 0, 1
            GoalY = 0
        ElseIf (Progress.Top - ClickedY + Y) > (UserControl.Height - Progress.Height) Then
'            PM.MoveSmly Progress, 0, UserControl.Height - Progress.Height, 1
            GoalY = UserControl.Height - Progress.Height
        Else
'            PM.MoveSmly Progress, 0, Progress.Top - ClickedY + Y, 1
            GoalY = Progress.Top - ClickedY + Y
        End If
        Progress.Top = GoalY
    End If
    If MouseDowned Then
        RaiseEvent Scroll(GoalY / (UserControl.Height - Progress.Height))
        RaiseEvent Change(GoalY / (UserControl.Height - Progress.Height))
    End If
    If Is_Enabled = True Then RaiseEvent MouseMove(Button, Shift, X, Y, C_Value)
    If Is_Enabled = True Then
        Shape1.Width = Progress.Width
        Shape1.Height = Progress.Height
        Select Case C_Style_Border
        Case 0
            '
        Case 1
            Shape1.BorderColor = RGB(Abs(255 - C_Color_Top Mod 256), Abs(255 - (C_Color_Top Mod 65536) \ 256), Abs(255 - C_Color_Top \ 65536))
            Shape1.Visible = True
        Case 2
            Shape1.BorderColor = C_Color_Border
            Shape1.Visible = True
        End Select
    End If
End Sub

Private Sub Progress_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ClickedY = 0
    If Is_Enabled = True Then RaiseEvent MouseUp(Button, Shift, X, Y, C_Value)
    MouseDowned = False
    C_Value = GoalY / (UserControl.Height - Progress.Height)
    Value = C_Value
End Sub

Private Sub UserControl_Initialize()
    C_Color_Top = &HFF7402
    C_Color_Back = &HF2AF00
    C_Is_Enabled = True
    C_Value = 0
    C_Size = 0.2
    C_Value_Wheel_Change = 0.05
    C_Style_Border = 0
    C_Color_Border = &H0&
    Init UserControl.hWnd
    MLInit Progress.hWnd
End Sub

Private Sub UserControl_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = -256 Then
        If Me.Value > Value_Wheel_Change Then
            Me.Value = Me.Value - Value_Wheel_Change
        Else
            Me.Value = 0
        End If
    ElseIf KeyCode = -255 Then
        If Me.Value < (1 - Value_Wheel_Change) Then
            Me.Value = Me.Value + Value_Wheel_Change
        Else
            Me.Value = 1
        End If
    End If
    If Is_Enabled Then RaiseEvent Scroll(C_Value) '���������¼�
End Sub

Private Sub UserControl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Is_Enabled = True Then RaiseEvent MouseDown(Button, Shift, X, Y, C_Value)
End Sub

Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Is_Enabled = True Then RaiseEvent MouseMove(Button, Shift, X, Y, C_Value)
End Sub

Private Sub UserControl_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Is_Enabled = True Then RaiseEvent MouseUp(Button, Shift, X, Y, C_Value)
End Sub

Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
    C_Color_Top = PropBag.ReadProperty("Color_Top", &HFF7402)
    C_Color_Back = PropBag.ReadProperty("Color_Back", &HF2AF00)
    C_Is_Enabled = PropBag.ReadProperty("Is_Enabled", True)
    C_Value = PropBag.ReadProperty("Value", 0)
    C_Size = PropBag.ReadProperty("Size", 0.2)
    C_Value_Wheel_Change = PropBag.ReadProperty("Value_Wheel_Change", 0.05)
    C_Style_Border = PropBag.ReadProperty("Style_Border", 0)
    C_Color_Border = PropBag.ReadProperty("Color_Border", &H0&)
    Progress.BackColor = C_Color_Top
    UserControl.BackColor = Color_Back
    Progress.Visible = C_Is_Enabled
    Progress.Top = (UserControl.Height - Progress.Height) * C_Value
    Progress.Height = UserControl.Height * C_Size
End Sub

Private Sub UserControl_Resize()
    Progress.Top = (UserControl.Height - Progress.Height) * C_Value
    Progress.Height = UserControl.Height * C_Size
    Progress.Width = UserControl.Width
    Shape1.Width = Progress.Width
    Shape1.Height = Progress.Height
End Sub

Private Sub UserControl_Terminate()
    Terminate UserControl.hWnd
    MLTerminate Progress.hWnd
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
    Call PropBag.WriteProperty("Color_Top", C_Color_Top, &HFF7402)
    Call PropBag.WriteProperty("Color_Back", C_Color_Back, &HF2AF00)
    Call PropBag.WriteProperty("Is_Enabled", C_Is_Enabled, True)
    Call PropBag.WriteProperty("Value", C_Value, 0)
    Call PropBag.WriteProperty("Size", C_Size, 0.2)
    Call PropBag.WriteProperty("Value_Wheel_Change", C_Value_Wheel_Change, 0.05)
    Call PropBag.WriteProperty("Style_Border", C_Style_Border, 0)
    Call PropBag.WriteProperty("Color_Border", C_Color_Border, &H0&)
End Sub



