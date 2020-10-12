<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WEB_FACTURA.Sitios.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 145px;
            height: 133px;
        }
        .auto-style2 {
            left: 25%;
            top: -14px;
        }
        .auto-style3 {
            left: 124px;
            top: 24px;
            width: 376px;
        }
    </style>

</head>
<body>
    <center>
    <form id="form1" runat="server" class="auto-style3">
        <center>
        <img alt="log" class="auto-style1" src="../Recursos/Imagenes/login-logo.png" /> <br />
        <br />LOGIN<br />
        </center>
        <br />
        <asp:TextBox ID="user" runat="server" placeholder="User" type="text" AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="pass" runat="server" placeholder="Password" type="password"></asp:TextBox>
        <br />
        <asp:Label ID="consulta" runat="server" Text="Usuario No Encontrado" ForeColor="Red"></asp:Label>
        <br />
        <center>
        <asp:Button ID="Ingreso" runat="server" Text="Log in" CssClass="auto-style2" OnClick="Ingreso_Click" />
        </center>

    </form>
    </center>
</body>
</html>
