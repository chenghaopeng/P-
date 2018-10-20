VERSION 5.00
Begin VB.UserControl PCheckBox 
   ClientHeight    =   375
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1455
   ScaleHeight     =   375
   ScaleWidth      =   1455
   Begin P�ؼ���.PButton B2 
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   0
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   11.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin P�ؼ���.PButton B1 
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
      Text            =   "��"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "���� Light"
         Size            =   11.25
         Charset         =   134
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
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
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Visible         =   0   'False
      Width           =   135
   End
End
Attribute VB_Name = "PCheckBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'������������������洢���Եı�������������������������������������������������������������������������������������������������������������������
Dim C_Color_Back As OLE_COLOR '������ɫ
Dim C_Color_End As OLE_COLOR '�����������ɫ
Dim C_Color_Text As OLE_COLOR '��ť�ı�����ɫ
Dim C_Text As String '�ı�
Dim C_Font As Font '����
Dim C_Is_Enabled As Boolean '�Ƿ����
Dim C_Value As Boolean 'ֵ
'�������������������¼�����������������������������������������������������������������������������������������������������������������
Public Event ValueChange(NValue As Boolean) 'ֵ�ı��¼�
Public Event Click() '�����¼�
Public Event DblClick() '˫���¼�
Public Event MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single, NValue As Boolean) '��갴���¼�,NValueΪ��ֵ
Public Event MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single, NValue As Boolean) '��괥���¼�,NValueΪ��ֵ
Public Event MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single, NValue As Boolean) '��굯���¼�,NValueΪ��ֵ
'���������������������ԡ���������������������������������������������������������������������������������������������������������������
Public Property Get Value() As Boolean 'ֵ
    Value = C_Value
End Property

Public Property Let Value(ByVal vNewValue As Boolean)
    C_Value = vNewValue
    If C_Value = True Then
        B1.Text = "��"
    Else
        B1.Text = "��"
    End If
    PropertyChanged "Value"
End Property

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
    Set B1.Font = C_Font
    Set B2.Font = C_Font
    PropertyChanged "Font"
End Property

Public Property Get Text() As String '�ı�
    Text = C_Text
End Property

Public Property Let Text(ByVal vNewValue As String)
    C_Text = vNewValue
    B2.Text = vNewValue
    PropertyChanged "Text"
End Property

Public Property Get Color_Back() As OLE_COLOR '������ɫ
    Color_Back = C_Color_Back
End Property

Public Property Let Color_Back(ByVal vNewValue As OLE_COLOR)
    C_Color_Back = vNewValue
    B1.Color_Back = vNewValue
    B2.Color_Back = vNewValue
    PropertyChanged "Color_Back"
End Property

Public Property Get Color_End() As OLE_COLOR '�����������ɫ
    Color_End = C_Color_End
End Property

Public Property Let Color_End(ByVal vNewValue As OLE_COLOR)
    C_Color_End = vNewValue
    B1.Color_End = vNewValue
    B2.Color_End = vNewValue
    PropertyChanged "Color_End"
End Property

Public Property Get Color_Text() As OLE_COLOR '�ı���ɫ
    Color_Text = C_Color_Text
End Property

Public Property Let Color_Text(ByVal vNewValue As OLE_COLOR)
    C_Color_Text = vNewValue
    B1.Color_Text = vNewValue
    B2.Color_Text = vNewValue
    PropertyChanged "Color_Text"
End Property
'�������������������¼�����������������������������������������������������������������������������������������������������������������
Private Sub B1_Click() 'B1�ĵ����¼�
    Value = Not (Value) 'ֵȡ�෴
    If C_Is_Enabled = True Then RaiseEvent Click '�����Ч,���������¼�
    If C_Is_Enabled = True Then RaiseEvent ValueChange(C_Value) '�����Ч,����ֵ�ı��¼�
End Sub

Private Sub B1_DblClick() 'B1��˫���¼�
    If C_Is_Enabled = True Then RaiseEvent DblClick '�����Ч,����˫���¼�
End Sub

Private Sub B1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1����갴���¼�
    If C_Is_Enabled = True Then RaiseEvent MouseDown(Button, Shift, X, Y, C_Value) '�����Ч,������갴���¼�
End Sub

Private Sub B1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1����괥���¼�
    If C_Is_Enabled = True Then RaiseEvent MouseMove(Button, Shift, X, Y, C_Value) '�����Ч,������괥���¼�
End Sub

Private Sub B1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1����굯���¼�
    If C_Is_Enabled = True Then RaiseEvent MouseUp(Button, Shift, X, Y, C_Value) '�����Ч,������굯���¼�
End Sub

Private Sub B2_Click() 'B2�ĵ����¼�
    B1_Click '����B1�ĵ����¼�
End Sub

Private Sub B2_DblClick() 'B2��˫���¼�
    B1_DblClick '����B1��˫���¼�
End Sub

Private Sub B2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B2����갴���¼�
    B1_MouseDown Button, Shift, X, Y '����B1����갴���¼�
End Sub

Private Sub B2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B2����괥���¼�
    B1_MouseMove Button, Shift, X, Y '����B1����괥���¼�
End Sub

Private Sub B2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B2����굯���¼�
    B1_MouseUp Button, Shift, X, Y '����B1����굯���¼�
End Sub

Private Sub UserControl_Initialize() '�ؼ��ļ����¼�
    C_Color_Back = &HF2AF00 '����ÿ�����Եĳ�ʼֵ
    C_Color_End = &HFF7402
    C_Color_Text = &H0&
    C_Text = "PCheckBox"
    Set C_Font = FontTmp.Font
    C_Is_Enabled = True
    C_Value = False
    B1.Color_Text = C_Color_Text '����ÿ������
    B2.Color_Text = C_Color_Text
    B1.Color_End = C_Color_End
    B2.Color_End = C_Color_End
    B1.Color_Back = C_Color_Back
    B2.Color_Back = C_Color_Back
    B2.Text = C_Text
    Set B1.Font = C_Font
    Set B2.Font = C_Font
    If C_Value = True Then
        B1.Text = "��"
    Else
        B1.Text = "��"
    End If
End Sub

Private Sub UserControl_ReadProperties(PropBag As PropertyBag) '�ؼ��Ķ�ȡ�����¼�
    C_Color_Back = PropBag.ReadProperty("Color_Back", &HF2AF00) '��ȡ�������Ժͳ�ʼֵ
    C_Color_End = PropBag.ReadProperty("Color_End", &HFF7402)
    C_Color_Text = PropBag.ReadProperty("Color_Text", &H0&)
    C_Text = PropBag.ReadProperty("Text", "PButton")
    Set C_Font = PropBag.ReadProperty("Font", FontTmp.Font)
    C_Is_Enabled = PropBag.ReadProperty("Is_Enabled", True)
    C_Value = PropBag.ReadProperty("Value", False)
    B1.Color_Text = C_Color_Text '���ø�������
    B2.Color_Text = C_Color_Text
    B1.Color_End = C_Color_End
    B2.Color_End = C_Color_End
    B1.Color_Back = C_Color_Back
    B2.Color_Back = C_Color_Back
    B2.Text = C_Text
    Set B1.Font = C_Font
    Set B2.Font = C_Font
    If C_Value = True Then
        B1.Text = "��"
    Else
        B1.Text = "��"
    End If
End Sub

Private Sub UserControl_Resize() '�ؼ��Ĵ�С�ı��¼�
    If UserControl.Width < UserControl.Height Then UserControl.Width = UserControl.Height '�ı�ÿ���ؼ��Ĵ�С��λ��
    B1.Width = UserControl.Height
    B1.Height = UserControl.Height
    B2.Height = UserControl.Height
    B2.Width = UserControl.Width - B1.Width
    B2.Left = UserControl.Width - B2.Width
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag) '�ؼ���д�����¼�
    Call PropBag.WriteProperty("Color_Back", C_Color_Back, &HF2AF00) 'д��������Ժͳ�ʼֵ
    Call PropBag.WriteProperty("Color_End", C_Color_End, &HFF7402)
    Call PropBag.WriteProperty("Color_Text", C_Color_Text, &H0&)
    Call PropBag.WriteProperty("Text", C_Text, "PButton")
    Call PropBag.WriteProperty("Font", C_Font, FontTmp.Font)
    Call PropBag.WriteProperty("Is_Enabled", C_Is_Enabled, True)
    Call PropBag.WriteProperty("Value", C_Value, False)
End Sub
'��������������The End����������������������������������������������������������������������������������������������������������������

