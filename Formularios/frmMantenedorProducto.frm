VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmMantenedorProducto 
   Caption         =   "Productos"
   ClientHeight    =   7500
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9285
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7500
   ScaleWidth      =   9285
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   495
      Left            =   4680
      TabIndex        =   7
      Top             =   6720
      Width           =   2655
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   495
      Left            =   1080
      TabIndex        =   6
      Top             =   6720
      Width           =   3135
   End
   Begin VB.CheckBox chkPoceado 
      Alignment       =   1  'Right Justify
      Caption         =   "Es poceado?:"
      Height          =   255
      Left            =   5880
      TabIndex        =   5
      Top             =   1200
      Width           =   1455
   End
   Begin VB.CheckBox chkHabilitado 
      Alignment       =   1  'Right Justify
      Caption         =   "Habilitado:"
      Height          =   495
      Left            =   6000
      TabIndex        =   4
      Top             =   360
      Width           =   1215
   End
   Begin VB.ComboBox cmbGrupo 
      Height          =   315
      Left            =   3480
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1200
      Width           =   1935
   End
   Begin VB.TextBox txtNombre 
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   360
      Width           =   2055
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4575
      Left            =   480
      TabIndex        =   8
      Top             =   1920
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   8070
      _Version        =   393216
      Tab             =   2
      TabHeight       =   520
      TabCaption(0)   =   "Cuándo sortea?"
      TabPicture(0)   =   "frmMantenedorProducto.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "lblHora"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lblPuntos"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lblPuntos2"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lblPuntos3"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "lblPuntos4"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "lblPuntos5"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "lblPuntos6"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "lblPuntos7"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "chkLunes"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "chkMartes"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "chkMiércoles"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "chkJueves"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "chkViernes"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "chkSabado"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "chkDomingo"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "txtLunes1"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "txtLunes2"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "Text1"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "Text2"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "Text3"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "Text4"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "Text5"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "Text6"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "Text7"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "Text8"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "Text9"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).Control(26)=   "Text10"
      Tab(0).Control(26).Enabled=   0   'False
      Tab(0).Control(27)=   "Text11"
      Tab(0).Control(27).Enabled=   0   'False
      Tab(0).Control(28)=   "Text12"
      Tab(0).Control(28).Enabled=   0   'False
      Tab(0).ControlCount=   29
      TabCaption(1)   =   "Jurisdicciones"
      TabPicture(1)   =   "frmMantenedorProducto.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "cmdTodas"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "cmdNinguna"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "fraJurisdicciones"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "Modalidades"
      TabPicture(2)   =   "frmMantenedorProducto.frx":0038
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "cmdNueva"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "MSFlexGrid1"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).ControlCount=   2
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   2895
         Left            =   240
         TabIndex        =   46
         Top             =   840
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   5106
         _Version        =   393216
      End
      Begin VB.CommandButton cmdNueva 
         Caption         =   "Nueva"
         Height          =   615
         Left            =   6600
         TabIndex        =   45
         Top             =   720
         Width           =   1095
      End
      Begin VB.Frame fraJurisdicciones 
         Height          =   2415
         Left            =   -73560
         TabIndex        =   40
         Top             =   840
         Width           =   2895
         Begin VB.CheckBox chkMontevideo 
            Caption         =   "Montevideo"
            Height          =   375
            Left            =   480
            TabIndex        =   44
            Top             =   1560
            Width           =   1335
         End
         Begin VB.CheckBox chkIafas 
            Caption         =   "IAFAS Entre Rios"
            Height          =   495
            Left            =   480
            TabIndex        =   43
            Top             =   1080
            Width           =   1695
         End
         Begin VB.CheckBox chkPcia 
            Caption         =   "Pcia Buenos Aires"
            Height          =   375
            Left            =   480
            TabIndex        =   42
            Top             =   720
            Width           =   1815
         End
         Begin VB.CheckBox chkLotBa 
            Caption         =   "LotBa"
            Height          =   375
            Left            =   480
            TabIndex        =   41
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.CommandButton cmdNinguna 
         Caption         =   "Ninguna"
         Height          =   735
         Left            =   -69360
         TabIndex        =   39
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton cmdTodas 
         Caption         =   "Todas"
         Height          =   615
         Left            =   -69360
         TabIndex        =   38
         Top             =   960
         Width           =   1455
      End
      Begin VB.TextBox Text12 
         Height          =   375
         Left            =   -69120
         TabIndex        =   36
         Top             =   3720
         Width           =   855
      End
      Begin VB.TextBox Text11 
         Height          =   375
         Left            =   -70320
         TabIndex        =   35
         Top             =   3720
         Width           =   855
      End
      Begin VB.TextBox Text10 
         Height          =   375
         Left            =   -69120
         TabIndex        =   33
         Top             =   3240
         Width           =   855
      End
      Begin VB.TextBox Text9 
         Height          =   375
         Left            =   -70320
         TabIndex        =   32
         Top             =   3240
         Width           =   855
      End
      Begin VB.TextBox Text8 
         Height          =   375
         Left            =   -69120
         TabIndex        =   31
         Top             =   2760
         Width           =   855
      End
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   -70320
         TabIndex        =   30
         Top             =   2760
         Width           =   855
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   -69120
         TabIndex        =   29
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   -70320
         TabIndex        =   28
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   -69120
         TabIndex        =   27
         Top             =   1800
         Width           =   855
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   -70320
         TabIndex        =   26
         Top             =   1800
         Width           =   855
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   -69120
         TabIndex        =   25
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   -70320
         TabIndex        =   24
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox txtLunes2 
         Height          =   375
         Left            =   -69120
         TabIndex        =   19
         Top             =   840
         Width           =   855
      End
      Begin VB.TextBox txtLunes1 
         Height          =   375
         Left            =   -70320
         TabIndex        =   17
         Top             =   840
         Width           =   855
      End
      Begin VB.CheckBox chkDomingo 
         Caption         =   "Domingo"
         Height          =   255
         Left            =   -74160
         TabIndex        =   15
         Top             =   2520
         Width           =   1335
      End
      Begin VB.CheckBox chkSabado 
         Caption         =   "Sábado"
         Height          =   255
         Left            =   -74160
         TabIndex        =   14
         Top             =   2040
         Width           =   1095
      End
      Begin VB.CheckBox chkViernes 
         Caption         =   "Viernes"
         Height          =   255
         Left            =   -74040
         TabIndex        =   13
         Top             =   1680
         Width           =   975
      End
      Begin VB.CheckBox chkJueves 
         Caption         =   "Jueves"
         Height          =   375
         Left            =   -74040
         TabIndex        =   12
         Top             =   1320
         Width           =   1215
      End
      Begin VB.CheckBox chkMiércoles 
         Caption         =   "Miércoles"
         Height          =   255
         Left            =   -74040
         TabIndex        =   11
         Top             =   1080
         Width           =   975
      End
      Begin VB.CheckBox chkMartes 
         Caption         =   "Martes"
         Height          =   375
         Left            =   -74040
         TabIndex        =   10
         Top             =   720
         Width           =   1095
      End
      Begin VB.CheckBox chkLunes 
         Caption         =   "Lunes"
         Height          =   375
         Left            =   -74040
         TabIndex        =   9
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label lblPuntos7 
         Caption         =   ":"
         Height          =   375
         Left            =   -69360
         TabIndex        =   37
         Top             =   3720
         Width           =   255
      End
      Begin VB.Label lblPuntos6 
         Caption         =   ":"
         Height          =   375
         Left            =   -69360
         TabIndex        =   34
         Top             =   3240
         Width           =   855
      End
      Begin VB.Label lblPuntos5 
         Caption         =   ":"
         Height          =   255
         Left            =   -69360
         TabIndex        =   23
         Top             =   2880
         Width           =   495
      End
      Begin VB.Label lblPuntos4 
         Caption         =   ":"
         Height          =   255
         Left            =   -69360
         TabIndex        =   22
         Top             =   2400
         Width           =   615
      End
      Begin VB.Label lblPuntos3 
         Caption         =   ":"
         BeginProperty Font 
            Name            =   "Microsoft Tai Le"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -69360
         TabIndex        =   21
         Top             =   1800
         Width           =   855
      End
      Begin VB.Label lblPuntos2 
         Caption         =   ":"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -69360
         TabIndex        =   20
         Top             =   1320
         Width           =   495
      End
      Begin VB.Label lblPuntos 
         Caption         =   ":"
         BeginProperty Font 
            Name            =   "Microsoft Tai Le"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -69360
         TabIndex        =   18
         Top             =   840
         Width           =   495
      End
      Begin VB.Label lblHora 
         Caption         =   "Hora:"
         Height          =   375
         Left            =   -69720
         TabIndex        =   16
         Top             =   480
         Width           =   1335
      End
   End
   Begin VB.Label lblGrupo 
      Caption         =   "Grupo:"
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   1200
      Width           =   2295
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   495
      Left            =   960
      TabIndex        =   0
      Top             =   360
      Width           =   2175
   End
End
Attribute VB_Name = "frmMantenedorProducto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdSalir_Click()
    Unload Me
End Sub
