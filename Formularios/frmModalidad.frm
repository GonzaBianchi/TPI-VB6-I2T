VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmModalidad 
   Caption         =   "Modalidad"
   ClientHeight    =   5070
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5070
   ScaleWidth      =   4560
   Begin MSComCtl2.UpDown UpDown1 
      Height          =   495
      Left            =   3720
      TabIndex        =   12
      Top             =   1800
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   873
      _Version        =   393216
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   495
      Left            =   2520
      TabIndex        =   11
      Top             =   4320
      Width           =   1575
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   495
      Left            =   600
      TabIndex        =   10
      Top             =   4320
      Width           =   1575
   End
   Begin VB.TextBox txtDif 
      Height          =   495
      Left            =   1680
      TabIndex        =   9
      Top             =   3360
      Width           =   1935
   End
   Begin VB.TextBox txtValor 
      Height          =   375
      Left            =   1440
      TabIndex        =   7
      Top             =   2520
      Width           =   2295
   End
   Begin VB.TextBox txtOrden 
      Height          =   375
      Left            =   1440
      TabIndex        =   5
      Top             =   1800
      Width           =   2295
   End
   Begin VB.TextBox txtNombre 
      Height          =   495
      Left            =   1560
      TabIndex        =   3
      Top             =   1080
      Width           =   2055
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   1680
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label lblDif 
      Caption         =   "Valor Dif de la apuesta:"
      Height          =   495
      Left            =   360
      TabIndex        =   8
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label lblValor 
      Caption         =   "Valor de la apuesta:"
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   2520
      Width           =   975
   End
   Begin VB.Label lblOrden 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Orden:"
      Height          =   195
      Left            =   480
      TabIndex        =   4
      Top             =   1920
      Width           =   480
   End
   Begin VB.Label lblNombre 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre:"
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   1080
      Width           =   600
   End
   Begin VB.Label lblProducto 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Producto:"
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   690
   End
End
Attribute VB_Name = "frmModalidad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdSalir_Click()
    Unload Me
End Sub
