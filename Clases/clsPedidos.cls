VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsPedidos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private objCnx As clsConexion

Private Sub Class_Initialize()
    Set objCnx = New clsConexion
    objCnx.Conectar
End Sub

Private Sub Class_Terminate()
    On Error Resume Next
        objCnx.Desconectar
    Set objCnx = Nothing
End Sub

Public Function ObtenerDatosPedidos() As ADODB.Recordset
    Dim rs As New ADODB.Recordset
    Dim vSQL As String
    
    vSQL = "SELECT p.ped_id, p.ped_fec, p.ped_fecvenc, p.ped_total, c.cli_apenom AS cliente_nombre, "
    vSQL = vSQL & "       pr.pro_nom AS producto_nombre, pr.pro_valor "
    vSQL = vSQL & "FROM Pedido p "
    vSQL = vSQL & "INNER JOIN Cliente c ON p.cli_id = c.cli_id "
    vSQL = vSQL & "LEFT JOIN ProductoEnPedido pep ON p.ped_id = pep.ped_id "
    vSQL = vSQL & "LEFT JOIN Producto pr ON pep.pro_id = pr.pro_id "
    vSQL = vSQL & "WHERE p.ped_fecbaj IS NULL "
    vSQL = vSQL & "AND pr.pro_fecbaj IS NULL "
    vSQL = vSQL & "ORDER BY p.ped_id, pr.pro_nom"
    
    Set rs = objCnx.TraerRecordset(vSQL, adCmdText)
    
    Set ObtenerDatosPedidos = rs
    
End Function


