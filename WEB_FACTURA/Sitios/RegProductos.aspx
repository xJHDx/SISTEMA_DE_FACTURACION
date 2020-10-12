<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegProductos.aspx.cs" Inherits="WEB_FACTURA.Sitios.RegProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PRODUCTOS.</title>
    <link href="../Estilos/Css/EstiloBtn.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 562px;
            height: 36px;
        }
        .auto-style4 {
            width: 562px;
            height: 202px;
        }
        .auto-style5 {
            height: 202px;
        }
        .auto-style6 {
            width: 562px;
            height: 30px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">Ingrese o Modifique Algun Producto... </td>
                </tr>
                <tr>                    
                    <td class="auto-style4"><asp:GridView ID="gvProducto" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="ProductoID"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="gvProducto_RowCommand" OnRowEditing="gvProducto_RowEditing" OnRowCancelingEdit="gvProducto_RowCancelingEdit"
                OnRowUpdating="gvProducto_RowUpdating" OnRowDeleting="gvProducto_RowDeleting"
                
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1025px">
                <%--Propiedades del tema --%>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

                <Columns>
                    <asp:TemplateField HeaderText="Productos">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Nom_Producto") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtProductos" Text='<%# Eval("Nom_Producto") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtProductosFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Descripción">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Des_Producto") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDescripción" Text='<%# Eval("Des_Producto") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDescripciónFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Valor">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Valor_Producto") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtValor" Text='<%# Eval("Valor_Producto") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtValorFooter" runat="server" />

                        </FooterTemplate>
                    </asp:TemplateField>
                                       
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/Recursos/Imagenes/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="30px" Height="30px"/>
                            <asp:ImageButton ImageUrl="~/Recursos/Imagenes/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="30px" Height="30px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/Recursos/Imagenes/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="30px" Height="30px"/>
                            <asp:ImageButton ImageUrl="~/Recursos/Imagenes/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="30px" Height="30px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/Recursos/Imagenes/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="30px" Height="30px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView></td>
                    <td class="auto-style5">
                        <asp:Button class="bubbly-button"  ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <br />
                        <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Green" Text="" />
                        <br />
                        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="" />
                    </td>                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
