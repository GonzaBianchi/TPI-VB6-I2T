VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmRepo 
   Caption         =   "Repo. Prog. Mes"
   ClientHeight    =   5730
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10785
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5730
   ScaleWidth      =   10785
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   2895
      Left            =   1560
      TabIndex        =   3
      Top             =   1560
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   5106
      _Version        =   393216
      Rows            =   1
      Cols            =   6
      FixedRows       =   0
      FixedCols       =   5
      ScrollBars      =   2
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
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
      Left            =   3945
      TabIndex        =   2
      Top             =   4920
      Width           =   2895
   End
   Begin VB.ComboBox cmbMes 
      Height          =   315
      Left            =   4665
      TabIndex        =   1
      Top             =   600
      Width           =   2535
   End
   Begin VB.Label lblMes 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mes:"
      BeginProperty Font 
         Name            =   "Microsoft Tai Le"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   3585
      TabIndex        =   0
      Top             =   480
      Width           =   810
   End
End
Attribute VB_Name = "frmRepo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmbMes_Change()
    ' Obtener el mes seleccionado y cargar los datos
    Call CargarDatosProgramaMes(cmbMes.Text)
End Sub

Private Sub cmdSalir_Click()
    Unload Me
End Sub

' Función para cargar los datos del mes seleccionado
Private Sub CargarDatosProgramaMes(ByVal mes As String)
    Dim rs As ADODB.Recordset
    Dim sql As String
    
    ' Definir la consulta SQL para traer los datos
    sql = "SELECT Producto, Sorteo, FechaSorteo, HoraSorteo, FechaPrescripcion, FechaProxSorteo " & _
          "FROM Programa " & _
          "WHERE Mes = '" & mes & "'"
    
    ' Ejecutar la consulta y traer los datos
    Set rs = ConectarYTraerDatos(sql)
    
    ' Limpiar el DataGrid o tabla
    DataGrid1.Clear
    
    ' Cargar los datos en el DataGrid
    Do While Not rs.EOF
        DataGrid1.AddItem rs!Producto & vbTab & rs!Sorteo & vbTab & rs!FechaSorteo & vbTab & _
                          rs!HoraSorteo & vbTab & rs!FechaPrescripcion & vbTab & rs!FechaProxSorteo
        rs.MoveNext
    Loop
    
    rs.Close
End Sub

' Función para conectar a la base de datos y traer los datos
Private Function ConectarYTraerDatos(ByVal sql As String) As ADODB.Recordset
    Dim cn As ADODB.Connection
    Dim rs As ADODB.Recordset
    
    ' Establecer la conexión a la base de datos
    Set cn = New ADODB.Connection
    cn.ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Loteria;Data Source=GONZA"
    cn.Open
    
    ' Ejecutar la consulta
    Set rs = New ADODB.Recordset
    rs.Open sql, cn, adOpenStatic, adLockReadOnly
    
    Set ConectarYTraerDatos = rs
End Function

