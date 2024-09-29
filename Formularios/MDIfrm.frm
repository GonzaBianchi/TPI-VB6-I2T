VERSION 5.00
Begin VB.MDIForm MDIfrm 
   BackColor       =   &H8000000C&
   Caption         =   "POC VB6 - Programación de Sorteos - Lotería de XXXX - Bianchini Gonzalo - Castillo Nicolas"
   ClientHeight    =   6780
   ClientLeft      =   120
   ClientTop       =   765
   ClientWidth     =   12750
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   Begin VB.Menu mnuHome 
      Caption         =   "Home"
      Begin VB.Menu mnuHomeSalir 
         Caption         =   "Salir"
      End
   End
   Begin VB.Menu mnuProg 
      Caption         =   "Programación"
      Begin VB.Menu mnuProgRepo 
         Caption         =   "Repo. Prog. Mes"
      End
      Begin VB.Menu mnuProgExp 
         Caption         =   "Export. Prog. Mes"
      End
   End
   Begin VB.Menu mnuMant 
      Caption         =   "Mantenedores"
      Begin VB.Menu mnuManPro 
         Caption         =   "Productos"
      End
      Begin VB.Menu mnuManMod 
         Caption         =   "Modalidades"
      End
      Begin VB.Menu mnuManVal 
         Caption         =   "Valor apuesta"
      End
      Begin VB.Menu mnuManCar 
         Caption         =   "Cargos"
      End
      Begin VB.Menu mnuManUsu 
         Caption         =   "Usuarios"
      End
      Begin VB.Menu mnuManAut 
         Caption         =   "Autoridad"
      End
      Begin VB.Menu mnuManLot 
         Caption         =   "Loterias"
      End
   End
End
Attribute VB_Name = "MDIfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' Definir la variable para la clase de conexión
Private objConexion As clsConexion

Private Sub MDIForm_Load()
    ' Crear una nueva instancia de la clase clsConexion
    Set objConexion = New clsConexion

    ' Intentar conectar a la base de datos
    objConexion.Conectar
End Sub

Private Sub mnuHomeSalir_Click()
    Unload Me
End Sub

Private Sub mnuManPro_Click()
    frmConsultaProductos.Show
End Sub

Private Sub mnuProgExp_Click()
    frmExp.Show
End Sub

Private Sub mnuProgRepo_Click()
    frmRepo.Show
End Sub


