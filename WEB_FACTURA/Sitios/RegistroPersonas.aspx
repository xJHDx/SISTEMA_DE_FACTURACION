<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroPersonas.aspx.cs" Inherits="WEB_FACTURA.Sitios.RegistroPersonas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro Persona</title>    
    </head>    
<body>
      <!-- Header -->
    
    <header id="header">
        <center>
        <h1>REGISTRO NUEVO USUARIO</h1>
        </center>
        <p>Por favor ingrese los datos solicitados para obtener los beneficios de la Web.<br />
           Para mayor informacion <a href="#">Contactenos</a>.
        </p>
    </header>

    <!-- Signup Form -->
    
    <form id="form2" runat="server">
        <td>
        <div style="width: 600px">
            <asp:HiddenField ID="hfUserID" runat="server" />
            <asp:Label ID="txlrol" runat="server" Text="Perfil"></asp:Label>&nbsp;&nbsp;
            <asp:DropDownList ID="dllrol" runat="server" Height="18px" Width="155px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Administrador</asp:ListItem>
                <asp:ListItem>Supervisor</asp:ListItem>
                <asp:ListItem>Operario </asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            <asp:TextBox ID="txlnombre" runat="server" placeholder="Nombres" type ="text" Width="255px" ></asp:TextBox><br /><br />
            <asp:TextBox ID="txlapellidos" runat="server" placeholder="Apellidos" type ="text" Width="255px" ></asp:TextBox><br /><br />
            <asp:TextBox ID="txlcedula" runat="server" placeholder="Numero de C.C" type ="tel" Width="255px" ></asp:TextBox><br /><br />            
            
            <asp:TextBox ID="txlciudad" runat="server" placeholder="Ciudad" Width="255px" ></asp:TextBox><br /><br />
            <asp:TextBox ID="txlcorreo" runat="server" placeholder="Correo" Width="255px" ></asp:TextBox><br /><br />            
            <td colspan="3">
                <hr />
            </td>
            <asp:TextBox ID="txlusername" runat="server" placeholder="User Name" Width="255px" ></asp:TextBox><br /><br />
            <asp:TextBox ID="txlpassword" runat="server" placeholder="Password" type ="password" Width="255px" ></asp:TextBox>  &nbsp; &nbsp;
            <asp:TextBox ID="txlconfirmPassword" runat="server" placeholder="Confirm Password" type ="password" Width="255px"></asp:TextBox><br />
            <br />
            <asp:Label ID="txlMensajeError" runat="server" Text="Error No Registrado" ForeColor="Red"  ></asp:Label>
            <asp:Label ID="txlMensajeCreado" runat="server" Text="Usuario Creado" ForeColor="Green"  ></asp:Label>
            <br />
            <asp:Button ID="BtnLogin" runat="server" Text="Iniciar Sesion" OnClick="BtnLogin_Click" />
            &nbsp;<asp:Button ID="BtnRegistro_user" runat="server" Text="Registrar" OnClick="BtnRegistro_user_Click"/>
            &nbsp;<asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
            &nbsp;<asp:Button ID="btnConsultar" runat="server" Text="Consultar User" OnClick="btnConsultar_Click"/>
            &nbsp;<asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="Btnhome_Click" />
            <br />
        </div>
        </td>
        </form>
     
</body>
</html>
