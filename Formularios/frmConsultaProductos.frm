VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmConsultaProductos 
   Caption         =   "Productos"
   ClientHeight    =   6945
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12165
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6945
   ScaleWidth      =   12165
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   1695
      Left            =   1680
      TabIndex        =   12
      Top             =   3840
      Width           =   8175
      _ExtentX        =   14420
      _ExtentY        =   2990
      _Version        =   393216
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   735
      Left            =   5400
      TabIndex        =   11
      Top             =   5880
      Width           =   1935
   End
   Begin VB.CommandButton cmdNuevo 
      Caption         =   "Nuevo"
      Height          =   735
      Left            =   2640
      TabIndex        =   10
      Top             =   5880
      Width           =   1815
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Height          =   615
      Left            =   5640
      TabIndex        =   9
      Top             =   2760
      Width           =   1815
   End
   Begin VB.CommandButton cmdLimpiar 
      Caption         =   "Limpiar"
      Height          =   615
      Left            =   2760
      TabIndex        =   8
      Top             =   2760
      Width           =   1815
   End
   Begin VB.ComboBox cmbTipo 
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "frmConsultaProductos.frx":0000
      Left            =   8400
      List            =   "frmConsultaProductos.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   1680
      Width           =   1575
   End
   Begin VB.ComboBox cmbGrupo 
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "frmConsultaProductos.frx":0021
      Left            =   3000
      List            =   "frmConsultaProductos.frx":0031
      TabIndex        =   5
      Text            =   "Quinielas"
      Top             =   1560
      Width           =   2415
   End
   Begin VB.ComboBox cmbHabilitado 
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      ItemData        =   "frmConsultaProductos.frx":0061
      Left            =   8400
      List            =   "frmConsultaProductos.frx":006B
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox txtNombre 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3000
      TabIndex        =   1
      Top             =   600
      Width           =   2415
   End
   Begin VB.Label lblTipo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Tipo:"
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   7320
      TabIndex        =   6
      Top             =   1560
      Width           =   870
   End
   Begin VB.Label lblGrupo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Grupo:"
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1200
      TabIndex        =   4
      Top             =   1560
      Width           =   1185
   End
   Begin VB.Label lblHabilitado 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Habilitado:"
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   6360
      TabIndex        =   2
      Top             =   600
      Width           =   1890
   End
   Begin VB.Label lblNombre 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre:"
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   1515
   End
End
Attribute VB_Name = "frmConsultaProductos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdSalir_Click()
    Unload Me
End Sub
