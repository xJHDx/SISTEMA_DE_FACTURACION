using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WEB_FACTURA.Sitios
{
    public partial class DatosFactura : System.Web.UI.Page
    {
        String ConectarDataBase = @"Data Source=TAURO\SQLEXPRESS01;Initial Catalog=Sitio_Web;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {                       
            string nu = nfactura.SelectedItem.ToString();            

            Response.Redirect("Factura.aspx?fe=" + txlFecha.Text + "&nu=" + nu + "&nit=" + nit.Text + "&empresa=" + empresa.Text + "&dirreccion=" + dirreccion.Text + "&telefonos=" + telefonos.Text + "&ubicacion=" + ubicacion.Text +            
            "&cantidad01=" + cantidad01.Text + "&cantidad02=" + cantidad02.Text + "&cantidad03=" + cantidad03.Text + "&cantidad04=" + cantidad04.Text +
            "&concepto01=" + concepto01.Text + "&concepto02=" + concepto02.Text + "&concepto03=" + concepto03.Text + "&concepto04=" + concepto04.Text +
            "&valor01=" + valor01.Text + "&valor02=" + valor02.Text + "&valor03=" + valor03.Text + "&valor04=" + valor04.Text +
            "&renta01=" + renta01.Text + "&renta02=" + renta02.Text + "&renta03=" + renta03.Text + "&renta04=" + renta04.Text +
            "&impoiva=" + impoiva.Text + "&cuotaiva=" + cuotaiva.Text + "&imporenta=" + imporenta.Text + "&cuotarenta=" + cuotarenta.Text);

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Sitios/Opciones.aspx");
        }

        protected void Peguelo(object sender, EventArgs e)
        {
            if (nit.Text != "")
            {
                try
                {
                    using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                    {
                        sqlCon.Open();
                        string query = "SELECT * FROM tblCliente WHERE Nit = @Nit";
                        SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);
                        Sqlcmd.Parameters.AddWithValue("@Nit", nit.Text);
                        SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                        if (Sqlda.Read())
                        {
                            nit.Text = Sqlda["Nit"].ToString();
                            empresa.Text = Sqlda["Nom_Empresa"].ToString();
                            dirreccion.Text = Sqlda["Dirreccion"].ToString();
                            telefonos.Text = Sqlda["Telefono_Emp"].ToString();
                            ubicacion.Text = Sqlda["Ubicacion_Emp"].ToString();

                            lblSuccessMessage.Text = "Consulta Realizada";
                            lblErrorMessage.Text = "";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblSuccessMessage.Text = "";
                    lblErrorMessage.Text = ex.Message;
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    sqlCon.Open();
                    string query = "SELECT * FROM Productos WHERE ProductoID = @id";
                    SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);
                    Sqlcmd.Parameters.AddWithValue("@id", codigoproducto01.SelectedValue);
                    SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                    if (Sqlda.Read())
                    {
                        concepto01.Text = Sqlda["Des_Producto"].ToString();
                        valor01.Text = Sqlda["Valor_Producto"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    sqlCon.Open();
                    string query = "SELECT * FROM Productos WHERE ProductoID = @id";
                    SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);
                    Sqlcmd.Parameters.AddWithValue("@id", codigoproducto02.SelectedValue);
                    SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                    if (Sqlda.Read())
                    {
                        concepto02.Text = Sqlda["Des_Producto"].ToString();
                        valor02.Text = Sqlda["Valor_Producto"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    sqlCon.Open();
                    string query = "SELECT * FROM Productos WHERE ProductoID = @id";
                    SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);
                    Sqlcmd.Parameters.AddWithValue("@id", codigoproducto03.SelectedValue);
                    SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                    if (Sqlda.Read())
                    {
                        concepto03.Text = Sqlda["Des_Producto"].ToString();
                        valor03.Text = Sqlda["Valor_Producto"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    sqlCon.Open();
                    string query = "SELECT * FROM Productos WHERE ProductoID = @id";
                    SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);
                    Sqlcmd.Parameters.AddWithValue("@id", codigoproducto04.SelectedValue);
                    SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                    if (Sqlda.Read())
                    {
                        concepto04.Text = Sqlda["Des_Producto"].ToString();
                        valor04.Text = Sqlda["Valor_Producto"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}