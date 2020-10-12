<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegCliente.aspx.cs" Inherits="WEB_FACTURA.Sitios.RegCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 125px;
        }
        .auto-style5 {
            width: 75px;
        }
        .auto-style6 {
            margin-left: 14px;
        }
        .auto-style7 {
            width: 177px;
        }
        .auto-style8 {
            width: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td><h1>GESTION CLIENTE</h1></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="NIT:"></asp:Label> </td>
                    <td><asp:TextBox ID="tblNIT" runat="server" Width="220px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"> <asp:Label ID="Label3" runat="server" Text="EMPRESA:"></asp:Label>  </td>
                    <td><asp:TextBox ID="tblEmpresa" runat="server" Width="220px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"> <asp:Label ID="Label4" runat="server" Text="DIRRECION:"></asp:Label> </td>
                    <td><asp:TextBox ID="tblDirrecion" runat="server" Width="220px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"> <asp:Label ID="Label5" runat="server" Text="TELEFONO:"></asp:Label> </td>
                    <td><asp:TextBox ID="tblTelefono" runat="server" Width="220px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="UBICACION:"></asp:Label> </td>
                    <td><asp:TextBox ID="tblUbicacion" runat="server" Width="220px"></asp:TextBox></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td><asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label><asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnLista" runat="server" Text="Lista Clientes" CssClass="auto-style6" OnClick="btnLista_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:GridView ID="gvCliente" runat="server" 
                            
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1190px">

                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
