VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H000080FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BitBlt - Project Adventura"
   ClientHeight    =   8280
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   12000
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   238
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   552
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   800
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer4 
      Left            =   3120
      Top             =   7560
   End
   Begin VB.PictureBox Picture4 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   3840
      Left            =   11880
      Picture         =   "Form1.frx":585D7
      ScaleHeight     =   256
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   3840
      TabIndex        =   9
      Top             =   8400
      Visible         =   0   'False
      Width           =   57600
   End
   Begin VB.PictureBox Picture3 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   3840
      Left            =   11880
      Picture         =   "Form1.frx":8013A
      ScaleHeight     =   256
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   3840
      TabIndex        =   8
      Top             =   12480
      Visible         =   0   'False
      Width           =   57600
   End
   Begin VB.Timer Timer3 
      Left            =   2040
      Top             =   7560
   End
   Begin VB.Timer Timer2 
      Left            =   960
      Top             =   7440
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Doprava ->"
      Height          =   375
      Left            =   6113
      TabIndex        =   7
      Top             =   1920
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "<- Doleva"
      Height          =   375
      Left            =   4073
      TabIndex        =   6
      Top             =   1920
      Width           =   1815
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   3840
      Left            =   11880
      Picture         =   "Form1.frx":AEF7B
      ScaleHeight     =   256
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   3840
      TabIndex        =   1
      Top             =   4440
      Visible         =   0   'False
      Width           =   57600
   End
   Begin VB.Timer Timer1 
      Interval        =   31
      Left            =   120
      Top             =   7440
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   3840
      Left            =   11880
      Picture         =   "Form1.frx":DDB6F
      ScaleHeight     =   256
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   3840
      TabIndex        =   0
      Top             =   360
      Visible         =   0   'False
      Width           =   57600
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Pozice myši:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   120
      TabIndex        =   5
      Top             =   360
      Width           =   1140
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1320
      TabIndex        =   4
      Top             =   360
      Width           =   60
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1560
      TabIndex        =   3
      Top             =   120
      Width           =   60
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Pozice kliknutí:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pohyb
Dim doleva

Private Sub Command1_Click()
Timer2.Interval = 31
Timer3.Interval = 0
Timer4.Interval = 0
Timer1.Interval = 31
End Sub

Private Sub Command2_Click()
Timer2.Interval = 0
Timer3.Interval = 31
Timer1.Interval = 0
Timer4.Interval = 31
End Sub

Private Sub Form_Load()
doleva = 672
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label2.Caption = X & " x " & Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label5.Caption = X & " x " & Y
End Sub

Private Sub Timer1_Timer()
Form1.Cls
BitBlt Form1.hDC, doleva, 360, 128, 256, Picture1.hDC, pohyb, 0, vbSrcAnd
BitBlt Form1.hDC, doleva, 360, 128, 256, Picture2.hDC, pohyb, 0, vbSrcPaint
Form1.Refresh

End Sub

Private Sub Timer2_Timer()
pohyb = pohyb + 128

If pohyb >= 3840 Then pohyb = 1

doleva = doleva - 3.3

If doleva < -128 Then doleva = 750
End Sub

Private Sub Timer3_Timer()
pohyb = pohyb + 128

If pohyb >= 3840 Then pohyb = 1

doleva = doleva + 3.3

If doleva > 800 Then doleva = -128
End Sub

Private Sub Timer4_Timer()
Form1.Cls
BitBlt Form1.hDC, doleva, 360, 128, 256, Picture4.hDC, pohyb, 0, vbSrcAnd
BitBlt Form1.hDC, doleva, 360, 128, 256, Picture3.hDC, pohyb, 0, vbSrcPaint

Form1.Refresh
End Sub
