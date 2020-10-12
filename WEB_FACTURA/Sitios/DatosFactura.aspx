<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosFactura.aspx.cs" Inherits="WEB_FACTURA.Sitios.DatosFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DATOS FACTURA</title>
</head>
<body>
    <form id="form1" runat="server">        
        <table >
            <table>
              <tr>
                 <td>
                    <h1><asp:Label ID="Label11" runat="server" Text="INGRESE LOS DATOS PARA LA FACTURACION"></asp:Label></h1>
                 </td>
               </tr>
            </table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <h2><td>Fecha <asp:TextBox ID="txlFecha" runat="server" type="date"></asp:TextBox></td>
                            <td>N° de Factura 
                            <asp:DropDownList ID="nfactura" runat="server">
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem>03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                            </asp:DropDownList>
                      &nbsp;</td></h2>
                        </tr>

                    </table>
                    <table>
                        <tr>
                            <td>
                                <h2><asp:Label ID="Label1" runat="server" Text="DATOS DEL CLIENTE"></asp:Label></h2>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="NIT: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="nit" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="EMPRESA:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="empresa" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="DIRRECCION:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="dirreccion" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="TELEFONOS:" ></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="telefonos" runat="server" AutoCompleteType="Disabled" Type="text"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="UBICACION:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ubicacion" runat="server" AutoCompleteType="Disabled" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="Peguelo" />                                  
                            </td>      
                            <td>
                                <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label><asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>                               
                            </td> 
                        </tr>
                    </table>
                    <table class="auto-style1">
            <tr>
                <td>
                    <h2><asp:Label ID="Label12" runat="server" Text="DATOS DEL PRODUCTO"></asp:Label></h2>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label33" runat="server" Text="CODIGO PRODUCTO: "></asp:Label>
                </td>
                <td> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="codigoproducto01" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="ver" OnClick="Button1_Click1" />
                </td>
                <td>
                    <asp:Label ID="Label34" runat="server" Text="CODIGO PRODUCTO: "></asp:Label>
                </td>
                <td> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="codigoproducto02" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="ver" OnClick="Button2_Click1" />
                </td>
                <td>
                    <asp:Label ID="Label35" runat="server" Text="CODIGO PRODUCTO: "></asp:Label>
                </td>
                <td> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="codigoproducto03" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="ver" OnClick="Button3_Click1" />
                </td>
                <td>
                    <asp:Label ID="Label36" runat="server" Text="CODIGO PRODUCTO: "></asp:Label>
                </td>
                <td> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="codigoproducto04" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="ver" OnClick="Button4_Click1" />
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="CANTIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cantidad01" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="CANTIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cantidad02" runat="server" AutoCompleteType="Disabled" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="CANTIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cantidad03" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server" Text="CANTIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cantidad04" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="label120" runat="server" Text="CONCEPTO:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="concepto01" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="CONCEPTO:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="concepto02" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="CONCEPTO:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="concepto03" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label29" runat="server" Text="CONCEPTO:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="concepto04" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="VALOR DE COMPRA:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="valor01" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="VALOR DE COMPRA:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="valor02" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label25" runat="server" Text="VALOR DE COMPRA"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="valor03" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label30" runat="server" Text="VALOR DE COMPRA"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="valor04" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="%IVA:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="iva19" runat="server" placeholder="%19" readonly></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="%IVA"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox20" runat="server" placeholder="%19" readonly></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label26" runat="server" Text="%IVA"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox21" runat="server" placeholder="%19" readonly></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label31" runat="server" Text="%IVA"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="%19" readonly></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="RENTABILIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="renta01" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="RENTABILIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="renta02" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" Text="RENTABILIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="renta03" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                 <td>
                    <asp:Label ID="Label32" runat="server" Text="RENTABILIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="renta04" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
        </table>

                    <table>
                        <tr>
                            <td>
                                <h2><asp:Label ID="Label2" runat="server" Text="DATOS IMPONIBLE Y CUOTA"></asp:Label></h2>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="IMPONIBLE %IVA:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="impoiva" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="CUOTA %IVA:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="cuotaiva" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="IMPONIBLE RENTABILIDAD:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="imporenta" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="CUOTA RENTABILIDAD:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="cuotarenta" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="btngenerar" runat="server" Text="GENERAR FACTURA" OnClick="Button1_Click" />
                    &nbsp;&nbsp;                  
                    <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />          
                    
                </td>
            </tr>
        </table>       
    </form>
</body>
</html>
