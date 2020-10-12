<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WEB_FACTURA.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <link href="../Estilos/Css/EstiloUnico01.css" rel="stylesheet" />    
    <link href="Estilos/Css/EstiloBtn.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <!-- Header -->
    <header id="header">
        <h1>InstantHelp</h1>
        <p>
            Mi Sitio Web en donde realizaremos facturacion, creacion de productos y clientes dependiendo del usuario.<br />
            Para mayor informacion darle link al siguiente enlace  <a href="https://www.facebook.com/HomeInstantHelp/">InstantHelp</a>.
        </p>
        
            <h3>USUARIOS</h3>
            <p>USUARIO ADMINISTRADOR: Usuario que puede añadir y/e eliminar productos, crear usuarios y clientes,generar facturacion.<br />
            USUARIO SUPERVISOR: Usuario puede añadir y/e eliminar productos y generar facturacion.<br />
            USUARIO OPERADOR: Usuario solo puede generar facturacion.<br />
            </p>
        
</header>
        
        <asp:Button class="bubbly-button" ID="Btnindex" runat="server" Text="Home" />
        &nbsp; &nbsp;<asp:Button class="bubbly-button" ID="Btningreso" runat="server" Text="Ingresar Al Sistema" OnClick="Ingreso_Click" />
        
    <!-- Footer -->
    <footer id="footer">
        <ul class="icons">
            <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
            <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; Untitled.</li>
            <li>Credits: <a href="https://www.facebook.com/HomeInstantHelp/">JHD</a></li>
        </ul>
    </footer>
    </form>
</body>
</html>
