VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BackColor       =   &H00D25F00&
   BorderStyle     =   0  'None
   Caption         =   "P�ؼ��� �汾7"
   ClientHeight    =   7935
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11895
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7935
   ScaleWidth      =   11895
   StartUpPosition =   2  '��Ļ����
   Begin P�ؼ���.PWin8Form PWin8Form1 
      Height          =   7935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   13996
      Icon            =   "Form1.frx":0000
      Caption         =   "P�ؼ��� �汾7"
      Has_MaxButton   =   0   'False
      Is_Resizable    =   0   'False
      Begin VB.PictureBox Picture2 
         BackColor       =   &H00D25F00&
         BorderStyle     =   0  'None
         Height          =   495
         Left            =   120
         ScaleHeight     =   495
         ScaleWidth      =   11655
         TabIndex        =   51
         Top             =   7320
         Width           =   11655
         Begin P�ؼ���.PSubtitles PSubtitles1 
            Height          =   495
            Left            =   120
            TabIndex        =   56
            Top             =   0
            Width           =   4095
            _ExtentX        =   7223
            _ExtentY        =   873
            Interval        =   5000
            Is_Random       =   0   'False
         End
         Begin VB.Label Label13 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "���ڻ�ȡʵ�����������Ժ�..."
            BeginProperty Font 
               Name            =   "���� Light"
               Size            =   9.75
               Charset         =   134
               Weight          =   300
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   8130
            TabIndex        =   52
            Top             =   120
            Width           =   2475
         End
         Begin VB.Label Label15 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�л�����"
            BeginProperty Font 
               Name            =   "���� Light"
               Size            =   9.75
               Charset         =   134
               Weight          =   300
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFF80&
            Height          =   210
            Left            =   10755
            TabIndex        =   55
            Top             =   120
            Width           =   780
         End
      End
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00D25F00&
         BorderStyle     =   0  'None
         Height          =   6855
         Left            =   120
         ScaleHeight     =   6855
         ScaleWidth      =   11655
         TabIndex        =   1
         Top             =   480
         Width           =   11655
         Begin VB.PictureBox jieshao 
            BackColor       =   &H00FF7C11&
            BorderStyle     =   0  'None
            Height          =   6015
            Left            =   8280
            ScaleHeight     =   6015
            ScaleWidth      =   3135
            TabIndex        =   73
            Top             =   720
            Width           =   3135
            Begin VB.PictureBox Picture3 
               BackColor       =   &H00FF7C11&
               BorderStyle     =   0  'None
               FillStyle       =   0  'Solid
               Height          =   5865
               Left            =   15
               ScaleHeight     =   5865
               ScaleWidth      =   2985
               TabIndex        =   76
               Top             =   15
               Width           =   2985
               Begin VB.PictureBox Picture4 
                  BackColor       =   &H00FF7C11&
                  BorderStyle     =   0  'None
                  Height          =   4455
                  Left            =   0
                  ScaleHeight     =   4455
                  ScaleWidth      =   2295
                  TabIndex        =   77
                  Top             =   0
                  Width           =   2295
                  Begin VB.Label jssss 
                     AutoSize        =   -1  'True
                     BackStyle       =   0  'Transparent
                     BeginProperty Font 
                        Name            =   "���� Light"
                        Size            =   12
                        Charset         =   134
                        Weight          =   300
                        Underline       =   0   'False
                        Italic          =   0   'False
                        Strikethrough   =   0   'False
                     EndProperty
                     Height          =   255
                     Left            =   0
                     TabIndex        =   78
                     Top             =   0
                     Width           =   60
                  End
               End
            End
            Begin P�ؼ���.PHScrollBar PH 
               Height          =   120
               Left            =   15
               TabIndex        =   75
               Top             =   5880
               Width           =   2985
               _ExtentX        =   5265
               _ExtentY        =   212
               Size            =   0.5
            End
            Begin P�ؼ���.PVScrollBar PV 
               Height          =   5865
               Left            =   3000
               TabIndex        =   74
               Top             =   15
               Width           =   120
               _ExtentX        =   212
               _ExtentY        =   10345
               Size            =   0.3
            End
            Begin VB.Shape Shape1 
               BackColor       =   &H00FF7C11&
               BorderColor     =   &H00F2AF00&
               Height          =   6015
               Left            =   0
               Top             =   0
               Width           =   3135
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   4575
            Index           =   27
            Left            =   1800
            ScaleHeight     =   4515
            ScaleWidth      =   6675
            TabIndex        =   79
            Top             =   -3960
            Width           =   6735
            Begin VB.ListBox List1 
               Height          =   960
               Left            =   2520
               TabIndex        =   111
               Top             =   2760
               Visible         =   0   'False
               Width           =   1695
            End
            Begin P�ؼ���.PContainer PContainer2 
               Height          =   855
               Left            =   120
               TabIndex        =   106
               Top             =   3600
               Width           =   6495
               _ExtentX        =   11456
               _ExtentY        =   1508
               Color_Back      =   15756288
               Begin MSComDlg.CommonDialog cd 
                  Left            =   3480
                  Top             =   240
                  _ExtentX        =   847
                  _ExtentY        =   847
                  _Version        =   393216
                  CancelError     =   -1  'True
                  Filter          =   "vb project(*.vbp)|*.vbp"
               End
               Begin VB.TextBox Text3 
                  BackColor       =   &H00FFFFFF&
                  BorderStyle     =   0  'None
                  Enabled         =   0   'False
                  BeginProperty Font 
                     Name            =   "���� Light"
                     Size            =   12
                     Charset         =   134
                     Weight          =   300
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00C0C0C0&
                  Height          =   255
                  Left            =   120
                  TabIndex        =   110
                  Text            =   "������������"
                  Top             =   480
                  Width           =   4440
               End
               Begin P�ؼ���.PButtonE PButtonE4 
                  Height          =   615
                  Left            =   4680
                  TabIndex        =   109
                  Top             =   120
                  Width           =   1695
                  _ExtentX        =   2990
                  _ExtentY        =   1085
                  Text            =   "һ�����"
               End
               Begin P�ؼ���.PButtonE PButtonE3 
                  Height          =   255
                  Left            =   3825
                  TabIndex        =   108
                  Top             =   120
                  Width           =   735
                  _ExtentX        =   1296
                  _ExtentY        =   450
                  Text            =   "���"
                  BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                     Name            =   "���� Light"
                     Size            =   12
                     Charset         =   134
                     Weight          =   300
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
               End
               Begin VB.TextBox Text2 
                  BackColor       =   &H00FFFFFF&
                  BorderStyle     =   0  'None
                  BeginProperty Font 
                     Name            =   "���� Light"
                     Size            =   12
                     Charset         =   134
                     Weight          =   300
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00000000&
                  Height          =   255
                  Left            =   120
                  TabIndex        =   107
                  Text            =   "����·��"
                  Top             =   120
                  Width           =   3600
               End
            End
            Begin P�ؼ���.PButtonE PButtonE2 
               Height          =   375
               Left            =   4800
               TabIndex        =   105
               Tag             =   "0"
               Top             =   3120
               Width           =   1815
               _ExtentX        =   3201
               _ExtentY        =   661
               Text            =   "ȫѡ/ȫ��ѡ"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   0
               Left            =   120
               TabIndex        =   80
               Top             =   120
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��ť"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   1
               Left            =   1440
               TabIndex        =   81
               Top             =   120
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��ť"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   2
               Left            =   2760
               TabIndex        =   82
               Top             =   120
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "ѡ���"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   3
               Left            =   4080
               TabIndex        =   83
               Top             =   120
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��ѡ���"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   4
               Left            =   5400
               TabIndex        =   84
               Top             =   120
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "�����"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   5
               Left            =   120
               TabIndex        =   85
               Top             =   720
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "����"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   6
               Left            =   1440
               TabIndex        =   86
               Top             =   720
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "�������"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   7
               Left            =   2760
               TabIndex        =   87
               Top             =   720
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "�б��"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   8
               Left            =   4080
               TabIndex        =   88
               Top             =   720
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��ѧ�ؼ�"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   9
               Left            =   5400
               TabIndex        =   89
               Top             =   720
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "����Ӧ��"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   10
               Left            =   120
               TabIndex        =   90
               Top             =   1320
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "ͼƬ��"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   11
               Left            =   1440
               TabIndex        =   91
               Top             =   1320
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "����ϵ"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   12
               Left            =   2760
               TabIndex        =   92
               Top             =   1320
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "������"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   13
               Left            =   4080
               TabIndex        =   93
               Top             =   1320
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "������Ļ"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   14
               Left            =   5400
               TabIndex        =   94
               Top             =   1320
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��Ļ"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   15
               Left            =   120
               TabIndex        =   95
               Top             =   1920
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "����"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   16
               Left            =   1440
               TabIndex        =   96
               Top             =   1920
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "ѡ�"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   17
               Left            =   2760
               TabIndex        =   97
               Top             =   1920
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��ѡ�"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   18
               Left            =   4080
               TabIndex        =   98
               Top             =   1920
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "UI�ܼ�"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   19
               Left            =   5400
               TabIndex        =   99
               Top             =   1920
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "UI�ܼҼ�ǿ"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   20
               Left            =   120
               TabIndex        =   100
               Top             =   2520
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "���¿ؼ�"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   21
               Left            =   1440
               TabIndex        =   101
               Top             =   2520
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��������"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   22
               Left            =   2760
               TabIndex        =   102
               Top             =   2520
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "�����ؼ�"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   23
               Left            =   4080
               TabIndex        =   103
               Top             =   2520
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "��Win8����"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
            Begin P�ؼ���.PCheckBoxE Ctl 
               Height          =   495
               Index           =   24
               Left            =   5400
               TabIndex        =   104
               Top             =   2520
               Width           =   1215
               _ExtentX        =   2143
               _ExtentY        =   873
               Color_Back_1    =   16367714
               Text            =   "Winsock��װ"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   735
            Index           =   26
            Left            =   -4800
            ScaleHeight     =   675
            ScaleWidth      =   5235
            TabIndex        =   71
            Top             =   1440
            Width           =   5295
            Begin P�ؼ���.PTabE PTabE2 
               Height          =   495
               Left            =   120
               TabIndex        =   72
               Top             =   120
               Width           =   5055
               _ExtentX        =   8916
               _ExtentY        =   873
               Text            =   "PTabE1|PTabE2|PTabE3|PTabE4|PTabE5|PTabE7"
               ScrollSpeed     =   0.5
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   975
            Index           =   25
            Left            =   9480
            ScaleHeight     =   915
            ScaleWidth      =   1995
            TabIndex        =   69
            Top             =   360
            Width           =   2055
            Begin P�ؼ���.PButtonE PButtonE1 
               Height          =   735
               Left            =   120
               TabIndex        =   70
               Top             =   120
               Width           =   1815
               _ExtentX        =   3201
               _ExtentY        =   1296
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   975
            Index           =   24
            Left            =   10440
            ScaleHeight     =   915
            ScaleWidth      =   1995
            TabIndex        =   67
            Top             =   1320
            Width           =   2055
            Begin P�ؼ���.PCheckBoxE PCheckBoxE1 
               Height          =   735
               Left            =   120
               TabIndex        =   68
               Top             =   120
               Width           =   1815
               _ExtentX        =   3201
               _ExtentY        =   1296
            End
         End
         Begin P�ؼ���.PTabE PTabE1 
            Height          =   495
            Left            =   0
            TabIndex        =   66
            Top             =   0
            Width           =   11655
            _ExtentX        =   20558
            _ExtentY        =   873
            Color_Back_1    =   16745760
            Color_Back_Down_1=   16750144
            Color_Circle_1  =   16743441
            Color_Back_2    =   13786880
            Color_Back_Down_2=   16215808
            Color_Circle_2  =   12670720
            Text            =   $"Form1.frx":0C52
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "���� Light"
               Size            =   12
               Charset         =   134
               Weight          =   300
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Color_Text      =   16777215
            ScrollSpeed     =   0.35
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   2655
            Index           =   23
            Left            =   -4320
            ScaleHeight     =   2595
            ScaleWidth      =   4395
            TabIndex        =   64
            Top             =   720
            Width           =   4455
            Begin P�ؼ���.PContainer PContainer1 
               Height          =   2415
               Left            =   120
               TabIndex        =   65
               Top             =   120
               Width           =   4215
               _ExtentX        =   7435
               _ExtentY        =   4260
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   3735
            Index           =   16
            Left            =   10920
            ScaleHeight     =   3675
            ScaleWidth      =   5955
            TabIndex        =   6
            Top             =   1920
            Width           =   6015
            Begin P�ؼ���.PWin8Form PWin8Form2 
               Height          =   3735
               Left            =   0
               TabIndex        =   62
               Top             =   0
               Width           =   6015
               _ExtentX        =   10610
               _ExtentY        =   6588
               Icon            =   "Form1.frx":0D35
               Caption         =   "�𰴰�ť����Ȼ����ʲôСP�ɲ���"
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   5415
            Index           =   22
            Left            =   -7920
            ScaleHeight     =   5355
            ScaleWidth      =   8115
            TabIndex        =   61
            Top             =   -5040
            Width           =   8175
            Begin P�ؼ���.PCodeTextBox PCodeTextBox1 
               Height          =   5175
               Left            =   120
               TabIndex        =   63
               Top             =   120
               Width           =   7935
               _ExtentX        =   13996
               _ExtentY        =   9128
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   21
            Left            =   7080
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   59
            Top             =   960
            Width           =   1215
            Begin VB.Label Label17 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "����Ԥ��"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   60
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   15
            Left            =   360
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   7
            Top             =   4320
            Width           =   1215
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "�뿴�·�"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   8
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   20
            Left            =   -840
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   57
            Top             =   3480
            Width           =   1215
            Begin VB.Label Label16 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "�뿴�·�"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   58
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   1575
            Index           =   2
            Left            =   -2880
            ScaleHeight     =   1515
            ScaleWidth      =   3075
            TabIndex        =   40
            Top             =   4080
            Width           =   3135
            Begin P�ؼ���.PButton PButton1 
               Height          =   1335
               Left            =   120
               TabIndex        =   41
               Top             =   120
               Width           =   2895
               _ExtentX        =   5106
               _ExtentY        =   2355
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   15
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Can_Text_Move   =   0   'False
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   5175
            Index           =   1
            Left            =   1680
            ScaleHeight     =   5115
            ScaleWidth      =   4875
            TabIndex        =   42
            Top             =   1680
            Width           =   4935
            Begin P�ؼ���.PButtonE PButtonE5 
               Height          =   495
               Left            =   240
               TabIndex        =   112
               Top             =   3840
               Width           =   2175
               _ExtentX        =   3836
               _ExtentY        =   873
               Text            =   "������"
            End
            Begin P�ؼ���.PButtonE PButtonE6 
               Height          =   495
               Left            =   240
               TabIndex        =   113
               Top             =   4440
               Width           =   3015
               _ExtentX        =   5318
               _ExtentY        =   873
               Text            =   "����Longdows �澳��"
            End
            Begin P�ؼ���.PButtonE PButtonE7 
               Height          =   495
               Left            =   3360
               TabIndex        =   114
               Top             =   4440
               Width           =   1335
               _ExtentX        =   2355
               _ExtentY        =   873
               Text            =   "��ϵ����"
            End
            Begin P�ؼ���.PButtonE PButtonE8 
               Height          =   495
               Left            =   2520
               TabIndex        =   115
               Top             =   3840
               Width           =   2175
               _ExtentX        =   3836
               _ExtentY        =   873
               Text            =   "�������ߵ���ҳ"
            End
            Begin VB.Label Label4 
               Alignment       =   2  'Center
               BackStyle       =   0  'Transparent
               Caption         =   $"Form1.frx":1987
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   10.5
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   1935
               Left            =   120
               TabIndex        =   45
               Top             =   120
               Width           =   4605
            End
            Begin VB.Label Label5 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "�ر���л�������ִ�����ṩ�ߡ�����˼�塷"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   10.5
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   210
               Left            =   285
               TabIndex        =   44
               Top             =   2280
               Width           =   4425
            End
            Begin VB.Label Label6 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   $"Form1.frx":1ACA
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   10.5
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   840
               Left            =   480
               TabIndex        =   43
               Top             =   2760
               Width           =   3885
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   10
            Left            =   6960
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   23
            Top             =   6360
            Width           =   1215
            Begin VB.Label Label7 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "����Ԥ��"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   24
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   12
            Left            =   9720
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   19
            Top             =   6120
            Width           =   1215
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "����Ԥ��"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   20
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   1695
            Index           =   13
            Left            =   5640
            ScaleHeight     =   1635
            ScaleWidth      =   4200
            TabIndex        =   16
            Top             =   4920
            Width           =   4260
            Begin VB.TextBox Text1 
               BackColor       =   &H00FF7402&
               BorderStyle     =   0  'None
               BeginProperty Font 
                  Name            =   "����"
                  Size            =   12
                  Charset         =   134
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   270
               Left            =   120
               TabIndex        =   17
               Text            =   "P�ؼ���"
               Top             =   1200
               Width           =   3900
            End
            Begin P�ؼ���.PScreen PScreen1 
               Height          =   1050
               Left            =   120
               TabIndex        =   18
               Top             =   120
               Width           =   3915
               _ExtentX        =   6906
               _ExtentY        =   1852
               Color_Back      =   13786880
               Color_Text      =   16777215
               Color_Text_Back =   16741378
               Text            =   "P�ؼ���"
               Size            =   30
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   18
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   4335
            Index           =   11
            Left            =   11400
            ScaleHeight     =   4275
            ScaleWidth      =   3555
            TabIndex        =   21
            Top             =   6240
            Width           =   3615
            Begin P�ؼ���.PListBox PListBox1 
               Height          =   4080
               Left            =   120
               TabIndex        =   22
               Top             =   120
               Width           =   3375
               _ExtentX        =   5953
               _ExtentY        =   7197
               Color_Back      =   16741378
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               BeginProperty Font_Selected {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height_Item     =   255
               Color_Back_Selected=   13786880
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   5775
            Index           =   9
            Left            =   11520
            ScaleHeight     =   5715
            ScaleWidth      =   5475
            TabIndex        =   25
            Top             =   600
            Width           =   5535
            Begin P�ؼ���.PHScrollBar PHScrollBar3 
               Height          =   135
               Left            =   120
               TabIndex        =   26
               Top             =   5520
               Width           =   5295
               _ExtentX        =   9340
               _ExtentY        =   238
               Size            =   0.4
            End
            Begin P�ؼ���.PPRCS PPRCS1 
               Height          =   5295
               Left            =   120
               TabIndex        =   27
               Top             =   120
               Width           =   5295
               _ExtentX        =   9340
               _ExtentY        =   9340
               Color_Top       =   16777215
               Color_Back      =   13786880
               Color_Grid      =   16741378
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   3375
            Index           =   0
            Left            =   4560
            ScaleHeight     =   3315
            ScaleWidth      =   6675
            TabIndex        =   46
            Top             =   -2640
            Width           =   6735
            Begin VB.Image Image1 
               Height          =   480
               Left            =   6075
               Picture         =   "Form1.frx":1B4F
               Stretch         =   -1  'True
               Top             =   240
               Width           =   480
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "P�ؼ���"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   56.25
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   1170
               Left            =   120
               TabIndex        =   49
               Top             =   120
               Width           =   3990
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "�����汾7"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   26.25
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   540
               Left            =   4200
               TabIndex        =   48
               Top             =   720
               Width           =   2370
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "�� �� �� �� �� �� Խ"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   18
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   2400
               TabIndex        =   47
               Top             =   2760
               Width           =   2295
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   19
            Left            =   1440
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   53
            Top             =   720
            Width           =   1215
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "����Ԥ��"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   54
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   1215
            Index           =   3
            Left            =   -2520
            ScaleHeight     =   1155
            ScaleWidth      =   3075
            TabIndex        =   38
            Top             =   6120
            Width           =   3135
            Begin P�ؼ���.PCheckBox PCheckBox1 
               Height          =   975
               Left            =   120
               TabIndex        =   39
               Top             =   120
               Width           =   2895
               _ExtentX        =   5106
               _ExtentY        =   1720
               Text            =   "PCheckBox"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "���� Light"
                  Size            =   15
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   1215
            Index           =   4
            Left            =   2640
            ScaleHeight     =   1155
            ScaleWidth      =   2235
            TabIndex        =   36
            Top             =   -600
            Width           =   2295
            Begin P�ؼ���.PSwitch PSwitch1 
               Height          =   975
               Left            =   120
               TabIndex        =   37
               Top             =   120
               Width           =   2055
               _ExtentX        =   3625
               _ExtentY        =   1720
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   5
            Left            =   2160
            ScaleHeight     =   435
            ScaleWidth      =   7035
            TabIndex        =   34
            Top             =   6360
            Width           =   7095
            Begin VB.Timer Timer1 
               Interval        =   10
               Left            =   3960
               Top             =   0
            End
            Begin P�ؼ���.PProgressBar PProgressBar1 
               Height          =   255
               Left            =   120
               TabIndex        =   35
               Top             =   120
               Width           =   6855
               _ExtentX        =   12091
               _ExtentY        =   450
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   6
            Left            =   2280
            ScaleHeight     =   435
            ScaleWidth      =   7035
            TabIndex        =   32
            Top             =   6120
            Width           =   7095
            Begin P�ؼ���.PHScrollBar PHScrollBar2 
               Height          =   255
               Left            =   120
               TabIndex        =   33
               Top             =   120
               Width           =   6855
               _ExtentX        =   12091
               _ExtentY        =   450
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   5175
            Index           =   7
            Left            =   4680
            ScaleHeight     =   5115
            ScaleWidth      =   435
            TabIndex        =   30
            Top             =   5760
            Width           =   495
            Begin P�ؼ���.PVScrollBar PVScrollBar1 
               Height          =   4935
               Left            =   120
               TabIndex        =   31
               Top             =   120
               Width           =   255
               _ExtentX        =   450
               _ExtentY        =   8705
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   3495
            Index           =   14
            Left            =   8760
            ScaleHeight     =   3435
            ScaleWidth      =   4635
            TabIndex        =   9
            Top             =   2520
            Width           =   4695
            Begin P�ؼ���.PTab PTab2 
               Height          =   3255
               Left            =   120
               TabIndex        =   10
               Top             =   120
               Width           =   4455
               _ExtentX        =   7858
               _ExtentY        =   5741
               Color_Back      =   16741378
               Color_Text      =   15904512
               Color_Selector_Moved=   15904512
               Texts           =   "PTab1|PTab2|PTab3|PTab4|PTab5"
               Begin VB.Label Label9 
                  Alignment       =   2  'Center
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Transparent
                  Caption         =   "����˧���ĵ�1ҳ��"
                  BeginProperty Font 
                     Name            =   "΢���ź�"
                     Size            =   10.5
                     Charset         =   134
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   300
                  Index           =   0
                  Left            =   1320
                  TabIndex        =   15
                  Top             =   1320
                  Width           =   1815
               End
               Begin VB.Label Label9 
                  Alignment       =   2  'Center
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Transparent
                  Caption         =   "���ǿɰ��ĵ�2ҳ��"
                  BeginProperty Font 
                     Name            =   "΢���ź�"
                     Size            =   10.5
                     Charset         =   134
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   300
                  Index           =   1
                  Left            =   1320
                  TabIndex        =   14
                  Top             =   1320
                  Width           =   1815
               End
               Begin VB.Label Label9 
                  Alignment       =   2  'Center
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Transparent
                  Caption         =   "�������ȵĵ�3ҳ��"
                  BeginProperty Font 
                     Name            =   "΢���ź�"
                     Size            =   10.5
                     Charset         =   134
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   300
                  Index           =   2
                  Left            =   1320
                  TabIndex        =   13
                  Top             =   1320
                  Width           =   1815
               End
               Begin VB.Label Label9 
                  Alignment       =   2  'Center
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Transparent
                  Caption         =   "���ǿ��ĵ�4ҳ��"
                  BeginProperty Font 
                     Name            =   "΢���ź�"
                     Size            =   10.5
                     Charset         =   134
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   300
                  Index           =   3
                  Left            =   1320
                  TabIndex        =   12
                  Top             =   1320
                  Width           =   1815
               End
               Begin VB.Label Label9 
                  Alignment       =   2  'Center
                  AutoSize        =   -1  'True
                  BackStyle       =   0  'Transparent
                  Caption         =   "����ɵɵ�ĵ�5ҳ��"
                  BeginProperty Font 
                     Name            =   "΢���ź�"
                     Size            =   10.5
                     Charset         =   134
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   300
                  Index           =   4
                  Left            =   1320
                  TabIndex        =   11
                  Top             =   1320
                  Width           =   1815
               End
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   17
            Left            =   4440
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   4
            Top             =   720
            Width           =   1215
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "����Ԥ��"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   134
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   5
               Top             =   120
               Width           =   960
            End
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   495
            Index           =   18
            Left            =   6480
            ScaleHeight     =   435
            ScaleWidth      =   1155
            TabIndex        =   2
            Top             =   840
            Width           =   1215
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "����Ԥ��"
               BeginProperty Font 
                  Name            =   "���� Light"
                  Size            =   12
                  Charset         =   0
                  Weight          =   300
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   3
               Top             =   120
               Width           =   960
            End
         End
         Begin P�ؼ���.PUIMgrPlus PUIP 
            Left            =   6600
            Top             =   1320
            _ExtentX        =   847
            _ExtentY        =   847
         End
         Begin VB.PictureBox P 
            BackColor       =   &H00D25F00&
            Height          =   5535
            Index           =   8
            Left            =   4320
            ScaleHeight     =   5475
            ScaleWidth      =   5475
            TabIndex        =   28
            Top             =   6720
            Width           =   5535
            Begin P�ؼ���.PPictureBox PPictureBox1 
               Height          =   5280
               Left            =   120
               TabIndex        =   29
               Top             =   120
               Width           =   5280
               _ExtentX        =   9313
               _ExtentY        =   9313
               Picture         =   "Form1.frx":2791
               Color_Top       =   16741378
               Color_Back      =   15904512
            End
         End
         Begin P�ؼ���.PUpdate PUpdate1 
            Left            =   120
            Top             =   360
            _ExtentX        =   847
            _ExtentY        =   847
         End
         Begin P�ؼ���.PNet PN 
            Left            =   4680
            Top             =   0
            _ExtentX        =   847
            _ExtentY        =   847
         End
         Begin P�ؼ���.PWeather PWeather1 
            Left            =   3960
            Top             =   0
            _ExtentX        =   847
            _ExtentY        =   847
         End
      End
      Begin WMPLibCtl.WindowsMediaPlayer wmp 
         Height          =   135
         Left            =   12000
         TabIndex        =   50
         Top             =   240
         Visible         =   0   'False
         Width           =   135
         URL             =   ""
         rate            =   1
         balance         =   0
         currentPosition =   0
         defaultFrame    =   ""
         playCount       =   1
         autoStart       =   -1  'True
         currentMarker   =   0
         invokeURLs      =   -1  'True
         baseURL         =   ""
         volume          =   50
         mute            =   0   'False
         uiMode          =   "full"
         stretchToFit    =   0   'False
         windowlessVideo =   0   'False
         enabled         =   -1  'True
         enableContextMenu=   -1  'True
         fullScreen      =   0   'False
         SAMIStyle       =   ""
         SAMILang        =   ""
         SAMIFilename    =   ""
         captioningID    =   ""
         enableErrorDialogs=   0   'False
         _cx             =   238
         _cy             =   238
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim NowChoose As Integer
Dim jsss() As String

'http://p.longdows.cn/admin/index.php?share/fileDownload&user=chp&sid=wbcuCfpZ
Private Sub Form_Load()
    jsss = Split(Form2.jss, vbCrLf & "*****" & vbCrLf)
    wmp.settings.Volume = 100
    wmp.URL = "http://p.longdows.cn/music/zhuimengchizixin.mp3"
'    wmp.URL = App.Path & "\׷�γ�����.mp3"
    PPRCS1.DrawFunction "abs(sin(x))"
    PPRCS1.DrawFunction "-abs(sin(x))"
    PPRCS1.DrawFunction "abs(x+1/x)-1"
    PPRCS1.DrawFunction "-abs(-x^2-3)"
    PPRCS1.DrawFunction "sqr(2*cos(x)+2)"
    Dim s() As String
    s = Split(PWeather1.GetWethInfo_Today, "|")
    Label13 = s(0) & " " & s(1) & " " & Replace(s(2), " ", ":") & " " & Replace(s(3), " ", ":") & " ʵʱ�¶�:" & s(4) & "�� " & s(5) & " " & s(6) & " " & s(8)
    'ReDim js(P.UBound)
    PSubtitles1.TextsAndLinks = PN.GetHtmlCodeByXMLHTTP("http://p.longdows.cn/admin/index.php?share/fileDownload&user=chp&sid=AyWbeVTH")
    Dim i As Integer
    For i = 1 To 100
        PListBox1.AddItem "���ǵ�" & i & "�"
    Next
    For i = 0 To 4
        PTab2.BeRelated Label9(i)
    Next
    For i = 0 To P.UBound
        P(i).BorderStyle = 0
        P(i).Visible = False
    Next
    Show
    NowChoose = -1
    PTabE1_IndexChange 0, -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Form2
End Sub

Private Sub Label15_Click()
     Dim s() As String
     s = Split(PWeather1.GetWethInfo_Today(InputBox("������������֣�")), "|")
    Label13 = s(0) & " " & s(1) & " " & Replace(s(2), " ", ":") & " " & Replace(s(3), " ", ":") & " ʵʱ�¶�:" & s(4) & "�� " & s(5) & " " & s(6) & " " & s(8)
End Sub

Private Sub PButtonE2_Click()
    Dim i As Integer
    If PButtonE2.Tag = "0" Then
        PButtonE2.Tag = "1"
        For i = 0 To Ctl.UBound
            Ctl(i).Value = True
        Next
    Else
        PButtonE2.Tag = "0"
        For i = 0 To Ctl.UBound
            Ctl(i).Value = False
        Next
    End If
End Sub

Private Sub PButtonE3_Click()
    On Error GoTo Err
    cd.ShowOpen
    Text2 = cd.FileName
Err:
End Sub

Private Sub PButtonE4_Click()
    If Dir(Text2, vbHidden + vbReadOnly + vbSystem) = "" Then
        MsgBox "����·����Ч��һ�����ʧ�ܣ�"
        Exit Sub
    End If
    Dim i As Integer, P() As Boolean
    ReDim P(Ctl.UBound)
    List1.Clear
    For i = 0 To Ctl.UBound
        If Ctl(i).Value = True Then
            List1.AddItem i
            P(i) = True
        Else
            P(i) = False
        End If
    Next
    i = -1
    Do Until i = List1.ListCount - 1
        i = i + 1
        Select Case List1.List(i)
        Case 0
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 1
            If P(5) = False Then
                List1.AddItem 5
                P(5) = True
            End If
        Case 2
            If P(0) = False Then
                List1.AddItem 0
                P(0) = True
            End If
        Case 3
            If P(5) = False Then
                List1.AddItem 5
                P(5) = True
            End If
        Case 4
            If P(12) = False Then
                List1.AddItem 12
                P(12) = True
            End If
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 5
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 6
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
            If P(0) = False Then
                List1.AddItem 0
                P(0) = True
            End If
        Case 7
            If P(21) = False Then
                List1.AddItem 21
                P(21) = True
            End If
        Case 8
            '
        Case 9
            '
        Case 10
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
            If P(21) = False Then
                List1.AddItem 21
                P(21) = True
            End If
            If P(6) = False Then
                List1.AddItem 6
                P(6) = True
            End If
        Case 11
            If P(8) = False Then
                List1.AddItem 8
                P(8) = True
            End If
            If P(7) = False Then
                List1.AddItem 7
                P(7) = True
            End If
        Case 12
            '
        Case 13
            '
        Case 14
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 15
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 16
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 17
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
            If P(1) = False Then
                List1.AddItem 1
                P(1) = True
            End If
            If P(3) = False Then
                List1.AddItem 3
                P(3) = True
            End If
        Case 18
            '
        Case 19
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
        Case 20
            If P(9) = False Then
                List1.AddItem 9
                P(9) = True
            End If
        Case 21
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
            If P(0) = False Then
                List1.AddItem 0
                P(0) = True
            End If
        Case 22
            If P(9) = False Then
                List1.AddItem 9
                P(9) = True
            End If
        Case 23
            If P(18) = False Then
                List1.AddItem 18
                P(18) = True
            End If
            If P(0) = False Then
                List1.AddItem 0
                P(0) = True
            End If
        Case 24
            '
        End Select
    Loop
    Open Text2 For Input As #1
        Dim wenben  As String
        List1.Clear
        Do Until EOF(1)
            Input #1, wenben
            List1.AddItem wenben
        Loop
    Close #1
    Dim Pname As String
    Open Text2 For Output As #1
        Print #1, List1.List(0)
        Print #1, "Object={248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0; MSWINSCK.OCX"
        Print #1, "Object={F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0; COMDLG32.OCX"
        Print #1, "Object={0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0; msscript.ocx"
        Print #1, "Object={48E59290-9880-11CF-9754-00AA00C00908}#1.0#0; MSINET.OCX"
        Print #1, "Object={3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0; RICHTX32.OCX"
        Print #1, "Object={EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0; ieframe.dll"
        Print #1, "Module=At˾�Ǿ�_����; At˾�Ǿ�_����.bas"
        Print #1, "Module=Functions; Functions.bas"
        Print #1, "Module=MouseLeave; MouseLeave.bas"
        For i = 0 To Ctl.UBound
            If P(i) Then
                Print #1, "UserControl=" & Form2.List1.List(i) & ".ctl"
            End If
        Next
        For i = 1 To List1.ListCount - 1
            Print #1, List1.List(i)
            If Mid(List1.List(i), 1, 5) = "Name=" Then
                Pname = Replace(List1.List(i), "Name=", "")
            End If
        Next
    Close #1
    Pname = Mid(Pname, 2, Len(Pname) - 2)
    Dim aa() As String, sPath As String
    aa = Split(Text2, "\")
    For i = 0 To UBound(aa) - 1
        sPath = sPath & aa(i) & "\"
    Next
    For i = 0 To Ctl.UBound
        If P(i) Then
            Form2.Code(i).Text = Replace(Form2.Code(i).Text, "P�ؼ���", Pname)
            Form2.Code(i).SaveFile sPath & Form2.List1.List(i) & ".ctl", 1
        End If
    Next
    For i = 0 To Form2.bas.UBound
        Form2.bas(i).SaveFile sPath & Form2.bas(i).Tag, 1
    Next
    Dim XFile() As Byte
    If P(4) Then
        XFile = LoadResData("PCODETEXTBOX", "CTX")
        Open sPath & "PCodeTextBox.ctx" For Binary As #1
            Put #1, , XFile
        Close #1
    End If
    If P(23) Then
        XFile = LoadResData("PWIN8FORM", "CTX")
        Open sPath & "PWin8Form.ctx" For Binary As #1
            Put #1, , XFile
        Close #1
    End If
    MsgBox "һ�������ɣ�"
End Sub

Private Sub PButtonE5_Click()
    Dim v() As String, sss As String
    v = Split(PUpdate1.CheckUpdate, "*****")
    If UBound(v) <> -1 Then
        sss = "���°汾����" & vbCrLf & vbCrLf & "P�ؼ��� �汾" & v(0) & vbCrLf & vbCrLf & "������־��"
        Dim i As Integer
        For i = 1 To UBound(v) - 1
            sss = sss & vbCrLf & vbCrLf & v(i)
        Next
        sss = sss & vbCrLf & vbCrLf & "�Ƿ��������أ�"
        If MsgBox(sss, vbYesNo, "�����°汾") = vbYes Then
            If PN.DownloadFile(v(UBound(v)), App.Path & "\P�ؼ��� �汾" & v(0) & ".exe") Then
                MsgBox "������ɣ�"
            End If
        End If
    Else
        MsgBox "�������°汾��"
    End If
End Sub

Private Sub PButtonE6_Click()
    Shell "explorer http://longdows.cn"
End Sub

Private Sub PButtonE7_Click()
    Form2.web.Navigate "tencent://Message/?Uin=794780360&websiteName=q-zone.qq.com&Menu=yes"
End Sub

Private Sub PButtonE8_Click()
    Shell "explorer http://p.longdows.cn"
End Sub

Private Sub PH_Scroll(NValue As Single)
    Picture4.Left = NValue * (Picture3.Width - jssss.Width)
End Sub

Private Sub PHScrollBar3_Scroll(NValue As Single)
    PPRCS1.Resolution = Int(NValue * 99) + 1
End Sub

Private Sub PUI_MoveSmlyComplete(Control As Object)
    If NowChoose <> Control.Index Then Control.Visible = False
End Sub

Private Sub PTabE1_IndexChange(NewIndex As Integer, LastIndex As Integer)
    If NewIndex = NowChoose Then Exit Sub
    P(NewIndex).Visible = True
    P(NewIndex).ZOrder 0
    P(NewIndex).Left = -P(NewIndex).Width
    P(NewIndex).Top = (Picture1.ScaleHeight - P(NewIndex).Height - PTabE1.Height) / 2 + PTabE1.Height - 120
    PUIP.MoveSmly P(NewIndex), (Picture1.ScaleWidth - jieshao.Width - 120 - P(NewIndex).Width) / 2, P(NewIndex).Top, 1, NewIndex
    NowChoose = NewIndex
    If LastIndex <> -1 Then
        PUIP.MoveSmly P(LastIndex), P(LastIndex).Left, Picture1.ScaleHeight, 1, LastIndex, 5
    End If
    jssss = jsss(NewIndex)
    Picture4.Top = 0
    Picture4.Left = 0
    Picture4.Height = jssss.Height
    Picture4.Width = jssss.Width
    If jssss.Width > Picture3.Width Then
        PH.Is_Enabled = True
        PH.Value = 0
    Else
        PH.Is_Enabled = False
    End If
    If jssss.Height > Picture3.Height Then
        PV.Is_Enabled = True
        PV.Value = 0
    Else
        PV.Is_Enabled = False
    End If
End Sub

Private Sub PV_Scroll(NValue As Single)
    Picture4.Top = NValue * (Picture3.Height - jssss.Height)
End Sub

Private Sub Text1_Change()
    PScreen1.Text = Text1
End Sub

Private Sub Timer1_Timer()
    If PProgressBar1.Value = 1 Then PProgressBar1.Value = 0
    PProgressBar1.Value = PProgressBar1.Value + 0.005
End Sub
