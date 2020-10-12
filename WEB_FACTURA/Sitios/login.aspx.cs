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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            consulta.Visible = false; 
        }

        protected void Ingreso_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=TAURO\SQLEXPRESS01;Initial Catalog=Sitio_Web;Integrated Security=True"))
            {
                sqlCon.Open();
                String query = "SELECT COUNT(1) FROM tblPersona_web WHERE UserName=@username AND Password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", user.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", pass.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["username"] = user.Text.Trim();
                    Response.Redirect("~/Sitios/Opciones.aspx");
                }
                else
                {
                    consulta.Visible = true;
                }
            }
        }
        
    }
}