VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmExp 
   Caption         =   "Export. Prog. Mes"
   ClientHeight    =   3615
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11280
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3615
   ScaleWidth      =   11280
   Begin MSComDlg.CommonDialog dlgDestino 
      Left            =   8760
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtDestino 
      Height          =   375
      Left            =   4920
      TabIndex        =   6
      Top             =   1320
      Width           =   2655
   End
   Begin VB.CommandButton cmdDir 
      Caption         =   "..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7680
      TabIndex        =   5
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   495
      Left            =   6240
      TabIndex        =   4
      Top             =   2640
      Width           =   2055
   End
   Begin VB.CommandButton cmdExportar 
      Caption         =   "Exportar"
      Height          =   615
      Left            =   3120
      TabIndex        =   3
      Top             =   2520
      Width           =   2415
   End
   Begin VB.ComboBox cmbMes 
      Height          =   315
      Left            =   4800
      TabIndex        =   1
      Top             =   600
      Width           =   2295
   End
   Begin VB.Label lblCarpeta 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Carpeta destino:"
      BeginProperty Font 
         Name            =   "Microsoft New Tai Lue"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1920
      TabIndex        =   2
      Top             =   1320
      Width           =   2805
   End
   Begin VB.Label lblMes 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mes:"
      BeginProperty Font 
         Name            =   "Microsoft New Tai Lue"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   3840
      TabIndex        =   0
      Top             =   480
      Width           =   810
   End
End
Attribute VB_Name = "frmExp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdExportar_Click()
    Dim carpetaDestino As String
    Dim mesSeleccionado As String
    Dim archivoDestino As String
    
    ' Obtener el mes seleccionado del ComboBox
    mesSeleccionado = cmbMes.Text
    
    ' Verificar si hay una carpeta seleccionada
    If txtDestino.Text = "" Then
        MsgBox "Por favor, selecciona una carpeta destino.", vbExclamation
        Exit Sub
    End If
    
    ' Asignar la carpeta destino
    carpetaDestino = txtDestino.Text
    
    ' Crear nombre de archivo destino
    archivoDestino = carpetaDestino & "\" & "Programa_" & mesSeleccionado & ".txt"
    
    ' Exportar los datos del mes seleccionado a la carpeta destino
    Call ExportarDatos(mesSeleccionado, archivoDestino)
    
    ' Confirmación de la exportación
    MsgBox "Datos exportados con éxito a " & archivoDestino, vbInformation
End Sub

Private Sub cmdDir_Click()
    dlgDestino.ShowSave
    txtDestino.Text = dlgDestino.FileName
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

' Función que realiza la exportación de datos a un archivo
Private Sub ExportarDatos(ByVal mes As String, ByVal archivo As String)
    ' Aquí es donde extraerías los datos de la base de datos según el mes
    ' y los exportarías a un archivo de texto, por ejemplo:
    Dim fileNum As Integer
    fileNum = FreeFile
    
    Open archivo For Output As #fileNum
    
    ' Escribir datos (ejemplo)
    Print #fileNum, "Datos del mes: " & mes
    Print #fileNum, "Producto: Producto1"
    Print #fileNum, "Sorteo: Sorteo1"
    ' ... Agregar más datos según tu lógica
    
    Close #fileNum
End Sub
