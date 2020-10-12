using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WEB_FACTURA.Sitios
{
    public partial class RegistroPersonas : System.Web.UI.Page
    {
        String ConectarDataBase = @"Data Source=TAURO\SQLEXPRESS01;Initial Catalog=Sitio_Web;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();               
            }
        }

        protected void BtnRegistro_user_Click(object sender, EventArgs e)
        {
            if (txlusername.Text == "" || txlpassword.Text == "" || dllrol.SelectedValue == "" || txlnombre.Text == "" || txlapellidos.Text == "" 
                || txlcedula.Text == "" || txlciudad.Text == "" || txlcorreo.Text == "" )
            {
                txlMensajeError.Text = "Por Favor Llenar Los Campos Requeridos";
            }
            else if (txlpassword.Text != txlconfirmPassword.Text)
            {
                txlMensajeError.Text = "Las Contraseñas No Son Iguales";
            }
            else
            {
                try
                {
                    using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                    {
                        sqlCon.Open();
                        String query = "INSERT INTO tblPersona_web (Perfil,Username,Nombres,Apellidos,Cedula,Ciudad,Correo,Password) VALUES (@Perfil,@Username,@Nombres,@Apellidos,@Cedula,@Ciudad,@Correo,@Password)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@Perfil", dllrol.SelectedValue);
                        sqlCmd.Parameters.AddWithValue("@UserName", txlusername.Text.ToString());
                        sqlCmd.Parameters.AddWithValue("@Nombres", txlnombre.Text.ToString());
                        sqlCmd.Parameters.AddWithValue("@Apellidos", txlapellidos.Text.ToString());
                        sqlCmd.Parameters.AddWithValue("@Cedula", txlcedula.Text.ToString());                        
                        sqlCmd.Parameters.AddWithValue("@Ciudad", txlciudad.Text.ToString());                        
                        sqlCmd.Parameters.AddWithValue("@Correo", txlcorreo.Text.ToString());
                        sqlCmd.Parameters.AddWithValue("@Password", txlpassword.Text.ToString());
                        sqlCmd.ExecuteNonQuery();
                        Clear();
                        txlMensajeCreado.Text = "USUARIO CREADO EN SQL";
                    }
                }
                catch (Exception ex)
                {
                    txlMensajeError.Text = ex.Message;                    
                }                
            }
        }

        void Clear()
        {
            txlusername.Text = txlnombre.Text = txlapellidos.Text = txlcedula.Text = txlciudad.Text = txlcorreo.Text = txlpassword.Text = txlconfirmPassword.Text = "";
            hfUserID.Value = "";
            txlMensajeCreado.Text = txlMensajeError.Text = "";
        }

        protected void Btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/Opciones.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/login.aspx");
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (txlusername.Text != "")
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    try
                    {
                        sqlCon.Open();
                        string query = "SELECT * FROM tblPersona_web WHERE UserName = @Username";
                        SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);
                        Sqlcmd.Parameters.AddWithValue("@Username", txlusername.Text);
                        SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                        if (Sqlda.Read())
                        {
                            dllrol.Items.FindByValue(Sqlda["Perfil"].ToString()).Selected = true;
                            txlnombre.Text = Sqlda["Nombres"].ToString();
                            txlapellidos.Text = Sqlda["Apellidos"].ToString();
                            txlcedula.Text = Sqlda["Cedula"].ToString();                            
                            txlciudad.Text = Sqlda["Ciudad"].ToString();
                            txlcorreo.Text = Sqlda["Correo"].ToString();                            
                            txlusername.Text = Sqlda["UserName"].ToString();
                            txlpassword.Text = Sqlda["Password"].ToString();
                            txlconfirmPassword.Text = Sqlda["Password"].ToString();
                        }
                    }
                    catch (Exception ex)
                    {
                        txlMensajeError.Text = ex.Message;
                    }               
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    sqlCon.Open();
                    string query = "UPDATE tblPersona_web SET  Perfil=@Perfil, Nombres=@Nombres, Apellidos=@Apellidos, Cedula=@Cedula, Ciudad=@Ciudad, Correo=@Correo, Password=@Password  WHERE UserName=@UserName";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Perfil", dllrol.SelectedValue);
                    sqlCmd.Parameters.AddWithValue("@UserName", txlusername.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Nombres", txlnombre.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Apellidos", txlapellidos.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Cedula", txlcedula.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Ciudad", txlciudad.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Correo", txlcorreo.Text.ToString());
                    sqlCmd.Parameters.AddWithValue("@Password", txlpassword.Text.ToString());
                    sqlCmd.ExecuteNonQuery();                    
                    txlMensajeCreado.Text = "Usuario Modificado";
                    txlMensajeError.Text = "";
                }
            }
            catch (Exception ex)
            {
                txlMensajeCreado.Text = "";
                txlMensajeError.Text = ex.Message;
            }
        }
    }
}