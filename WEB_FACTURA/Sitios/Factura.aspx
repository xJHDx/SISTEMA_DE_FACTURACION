<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="WEB_FACTURA.Sitios.Factura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Facturacion</title> 
    <style type="text/css">
        .auto-style1 {
            width: 178px;
            height: 174px;
        }
        .auto-style3 {
            width: 105px;
        }
        .auto-style4 {
            width: 103px;
        }
        .auto-style5 {
            width: 107px;
        }
        .auto-style6 {
            width: 218px;
        }
        .auto-style7 {
            width: 220px;
        }
        .auto-style8 {
            width: 85px;
        }
        .auto-style9 {
            width: 134px;
        }
        .auto-style10 {
            width: 195px;
        }
        .auto-style11 {
            width: 334px;
        }
        .auto-style12 {
            width: 224px;
        }
        .auto-style13 {
            width: 207px;
        }
        .auto-style14 {
            width: 264px;
        }
        .auto-style15 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table>
            <tr>
                <td>
                <h1><asp:Label ID="lblfactura" runat="server" Text="FACTURA"></asp:Label></h1>
                </td>
            </tr>
        </table>
        </div>
        <table>
        <tr>
           <h2><td>
               <asp:Label ID="Label10" runat="server" Text="FECHA:"></asp:Label>
               </td>
               <td>
               <asp:Label ID="lblfecha" runat="server"></asp:Label>
               </td>
               <td>
               <asp:Label ID="Label11" runat="server" Text="N° de Factura:"></asp:Label>
               </td>
               <td>
               <asp:Label ID="lblnfactura" runat="server"></asp:Label>
               </td></h2>
        </tr>
        <table>
        <tr>
            <td class="auto-style13">
                <img alt="los" <img src="../Recursos/Imagenes/Mesa%20de%20trabajo%201.png" class="auto-style1"  />  
            </td>
            <td class="auto-style14">
            <table>
                <tr>
                    <td class="auto-style12">
                    <h3><asp:Label ID="Label1" runat="server" Text="LOS PELADOS"></asp:Label></h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Text="NIT: 1014254432"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Text="Calle 73f # 63-05"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Text="Cundinamarca - "></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Bogota D.C"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Text="Tel. 310 261 6444"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                    <asp:Label ID="Label7" runat="server" Text="www.lospelados.com.co"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="lospelados@gmail.com"></asp:Label>
                    </td>
                </tr>
                    <tr>
                        <td class="auto-style12">  </td>
                    </tr>
            </table>
            </td>
            <td>
            <table>
                    <tr>
                        <td class="auto-style15">
                            <h3><asp:Label ID="Label9" runat="server" Text="DATOS CLIENTE"></asp:Label></h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">   
                            <asp:Label ID="nit" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                         <asp:Label ID="empresa" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="dirreccion" runat="server" Text="" ></asp:Label>                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="telefonos" runat="server"  Text="" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="ubicacion" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label46" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </table>
        <table>
        <tr>
            <td></td>
        </tr>
    </table>
        <table>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label13" runat="server" Text="CANTIDAD"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label14" runat="server" Text="CONCEPTO"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label15" runat="server" Text="VALOR COMPRA UNITARIO"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label12" runat="server" Text="VALOR DE COMPAR NETO"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label16" runat="server" Text="IVA %19"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label17" runat="server" Text="RENTABILIDAD"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label18" runat="server" Text="VALOR NETO"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblcantidad01" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblconcepto01" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblvalor01" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblcompraneto01" runat="server"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label43" runat="server" Text="%19"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblrenta01" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblvalorneto01" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblcantidad02" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblconcepto02" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblvalor02" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblcompraneto02" runat="server"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label44" runat="server" Text="%19"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblrenta02" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblvalorneto02" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblcantidad03" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblconcepto03" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblvalor03" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblcompraneto03" runat="server" ></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label45" runat="server" Text="%19"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblrenta03" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblvalorneto03" runat="server"></asp:Label>
            </td>
        </tr>
            <tr>
            <td class="auto-style4">
                <asp:Label ID="lblcantidad04" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblconcepto04" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblvalor04" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblcompraneto04" runat="server" ></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label30" runat="server" Text="%19"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblrenta04" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblvalorneto04" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td></td>
        </tr>
    </table>

        <table>
            <tr>
                <td class="auto-style11">
                    <table>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label19" runat="server" Text="Base Imponible 19% de IVA"></asp:Label>
                            </td>
                            <td class="auto-style3">   
                                <asp:Label ID="lblimpoiva" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label20" runat="server" Text="Cuota del 19% del IVA"></asp:Label>
                            </td>
                            <td class="auto-style3">   
                                <asp:Label ID="lblcuotaiva" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label21" runat="server" Text="Base Imponible Rentabilidad"></asp:Label>
                            </td>
                            <td class="auto-style3">  
                                <asp:Label ID="lblimporenta" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">  
                                <asp:Label ID="Label26" runat="server" Text="Cuota de Rentabilidad"></asp:Label>
                            </td>
                            <td class="auto-style3">  
                                <asp:Label ID="lblcuotarenta" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <h3><asp:Label ID="Label22" runat="server" Text="TOTAL IVA: "></asp:Label></h3>
                            </td>
                            <td>
                                <h3><asp:Label ID="lbltotaliva" runat="server"></asp:Label></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h2><asp:Label ID="Label23" runat="server" Text="TOTAL RENTABILIDAD: "></asp:Label></h2>
                            </td>
                            <td>
                                <h2><asp:Label ID="lbltotalrenta" runat="server" ></asp:Label></h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h1><asp:Label ID="Label24" runat="server" Text="TOTAL FACTURA: "></asp:Label></h1>
                            </td>
                            <td>
                                <h1><asp:Label ID="lbltotalfactura" runat="server" ></asp:Label></h1>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
     <table>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="GUARDAR FACTURA" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="IMPRIMIR FACTURA" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="VOLVER" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
