using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WEB_FACTURA.Sitios
{
    public partial class RegCliente : System.Web.UI.Page
    {
        String ConectarDataBase = @"Data Source=TAURO\SQLEXPRESS01;Initial Catalog=Sitio_Web;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            gvCliente.Visible = false;
            if (!IsPostBack)
            {
                PopulateGridview();
            }
        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection Sqlcon = new SqlConnection(ConectarDataBase))
            {
                Sqlcon.Open();
                SqlDataAdapter Sqlda = new SqlDataAdapter("SELECT * FROM tblCliente", Sqlcon);
                Sqlda.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                gvCliente.DataSource = dtbl;
                gvCliente.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvCliente.DataSource = dtbl;
                gvCliente.DataBind();
                gvCliente.Rows[0].Cells.Clear();
                gvCliente.Rows[0].Cells.Add(new TableCell());
                gvCliente.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvCliente.Rows[0].Cells[0].Text = "Datos No Encontrados ..!";
                gvCliente.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void btnLista_Click(object sender, EventArgs e)
        {
            gvCliente.Visible = true;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/Opciones.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (tblNIT.Text == "" || tblEmpresa.Text == "" || tblDirrecion.Text == "" || tblTelefono.Text == "" || tblUbicacion.Text == "")
            {
                lblErrorMessage.Text = "Por Favor Llenar Los Campos Requeridos";
            }
            else
            {
                try
                {
                    using (SqlConnection Sqlcon = new SqlConnection(ConectarDataBase))
                    {
                        Sqlcon.Open();
                        String query = "INSERT INTO tblCliente (Nit,Nom_Empresa,Dirreccion,Telefono_Emp,Ubicacion_Emp) VALUES (@Nit,@Nom_Empresa,@Dirreccion,@Telefono_Emp,@Ubicacion_Emp)";
                        SqlCommand Sqlcmd = new SqlCommand(query, Sqlcon);
                        Sqlcmd.Parameters.AddWithValue("@Nit", tblNIT.Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Nom_Empresa", tblEmpresa.Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Dirreccion", tblDirrecion.Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Telefono_Emp", tblTelefono.Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Ubicacion_Emp", tblUbicacion.Text.Trim());
                        Sqlcmd.ExecuteNonQuery();
                        PopulateGridview();
                        Clear();
                        lblSuccessMessage.Text = "Nuevo Cliente Agregado";
                        lblErrorMessage.Text = "";
                    }
                }
                catch (Exception ex)
                {
                    lblSuccessMessage.Text = "";
                    lblErrorMessage.Text = ex.Message;
                }
            }
                
            
        }

        void Clear()
        {
            tblNIT.Text = tblEmpresa.Text = tblDirrecion.Text = tblTelefono.Text = tblUbicacion.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (tblNIT.Text != "")
            {
                using (SqlConnection sqlCon = new SqlConnection(ConectarDataBase))
                {
                    sqlCon.Open();
                    string query = "SELECT * FROM tblCliente WHERE Nit = @Nit";
                    SqlCommand Sqlcmd = new SqlCommand(query,sqlCon);
                    Sqlcmd.Parameters.AddWithValue("@Nit", tblNIT.Text);
                    SqlDataReader Sqlda = Sqlcmd.ExecuteReader();
                    if (Sqlda.Read())
                    {
                        tblNIT.Text = Sqlda["Nit"].ToString();
                        tblEmpresa.Text = Sqlda["Nom_Empresa"].ToString();
                        tblDirrecion.Text = Sqlda["Dirreccion"].ToString();
                        tblTelefono.Text = Sqlda["Telefono_Emp"].ToString();
                        tblUbicacion.Text = Sqlda["Ubicacion_Emp"].ToString();
                    }
                    gvCliente.Visible = true;
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
                    string query = "UPDATE tblCliente SET  Nom_Empresa=@Nom_Empresa, Dirreccion=@Dirreccion, Telefono_Emp=@Telefono_Emp, Ubicacion_Emp=@Ubicacion_Emp WHERE Nit=@Nit";
                    SqlCommand Sqlcmd = new SqlCommand(query, sqlCon);                    
                    Sqlcmd.Parameters.AddWithValue("@Nom_Empresa", tblEmpresa.Text.Trim());
                    Sqlcmd.Parameters.AddWithValue("@Dirreccion", tblDirrecion.Text.Trim());
                    Sqlcmd.Parameters.AddWithValue("@Telefono_Emp", tblTelefono.Text.Trim());
                    Sqlcmd.Parameters.AddWithValue("@Ubicacion_Emp", tblUbicacion.Text.Trim());
                    Sqlcmd.Parameters.AddWithValue("@Nit", tblNIT.Text.Trim());
                    Sqlcmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Cliente Modificado";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection Sqlcon = new SqlConnection(ConectarDataBase))
                {
                    Sqlcon.Open();
                    //String nit = tblNIT.Text;
                    String query = "DELETE FROM tblCliente WHERE Nit=@Nit";
                    SqlCommand Sqlcmd = new SqlCommand(query, Sqlcon);
                    Sqlcmd.Parameters.AddWithValue("@Nit", tblNIT.Text.Trim());
                    Sqlcmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Cliente Eliminado";
                    lblErrorMessage.Text = "";
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