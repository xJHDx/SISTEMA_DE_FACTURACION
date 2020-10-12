<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Opciones.aspx.cs" Inherits="WEB_FACTURA.Sitios.Opciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>OPCIONES</title>
    <link href="../Estilos/Css/EstiloBtn.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 255px;
        }
        .auto-style3 {
            width: 223px;
        }
        .auto-style4 {
            width: 191px;
            height: 154px;
        }
    </style>
    <link href="../Estilos/Css/EstiloUnico01.css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <img alt="" class="auto-style4" src="../Recursos/Imagenes/Mesa%20de%20trabajo%201.png" /></td>
                    
                    <td><h1>BIENVENIDO..</h1></td>

                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <table>                
                <tr>
                    <td class="auto-style2">
                        <asp:Button class="bubbly-button" ID="btnUsuarios" runat="server" Text="Crear o Modificar Usuarios." OnClick="btnUsuarios_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button class="bubbly-button" ID="btnProductos" runat="server" Text="Crear o Modificar Productos." OnClick="btnProductos_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button class="bubbly-button" ID="btnClientes" runat="server" Text="Crear o Modificar Clientes." OnClick="btnClientes_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button class="bubbly-button" ID="btnFactura" runat="server" Text="Generar Factura." OnClick="btnFactura_Click" />
                    </td>                    
                    <td>&nbsp;</td>
                </tr>
                </table>                
            </table>
        </div>
    </form>
</body>
</html>
