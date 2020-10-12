using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WEB_FACTURA.Sitios
{
    public partial class RegProductos : System.Web.UI.Page
    {
        String ConectarDataBase = @"Data Source=TAURO\SQLEXPRESS01;Initial Catalog=Sitio_Web;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
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
                SqlDataAdapter Sqlda = new SqlDataAdapter("SELECT * FROM Productos", Sqlcon);                
                Sqlda.Fill(dtbl);
            }
            if(dtbl.Rows.Count > 0)
            {
                gvProducto.DataSource = dtbl;
                gvProducto.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvProducto.DataSource = dtbl;
                gvProducto.DataBind();
                gvProducto.Rows[0].Cells.Clear();
                gvProducto.Rows[0].Cells.Add(new TableCell());
                gvProducto.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvProducto.Rows[0].Cells[0].Text = "Datos No Encontrados ..!";
                gvProducto.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }         

        }

        protected void gvProducto_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection Sqlcon = new SqlConnection(ConectarDataBase))
                    {
                        Sqlcon.Open();
                        String query = "INSERT INTO Productos (Nom_Producto,Des_Producto,Valor_Producto) VALUES (@Nom_Producto,@Des_Producto,@Valor_Producto)";
                        SqlCommand Sqlcmd = new SqlCommand(query, Sqlcon);
                        Sqlcmd.Parameters.AddWithValue("@Nom_Producto", (gvProducto.FooterRow.FindControl("txtProductosFooter") as TextBox).Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Des_Producto", (gvProducto.FooterRow.FindControl("txtDescripciónFooter") as TextBox).Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Valor_Producto", (gvProducto.FooterRow.FindControl("txtValorFooter") as TextBox).Text.Trim());
                        Sqlcmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "Nuevo Producto Agregado";
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

        protected void gvProducto_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProducto.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvProducto_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProducto.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvProducto_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {                
                    using (SqlConnection Sqlcon = new SqlConnection(ConectarDataBase))
                    {
                        Sqlcon.Open();
                        String query = "UPDATE Productos SET Nom_Producto=@Nom_Producto, Des_Producto=@Des_Producto, Valor_Producto=@Valor_Producto WHERE ProductoID = @id";
                        SqlCommand Sqlcmd = new SqlCommand(query, Sqlcon);
                        Sqlcmd.Parameters.AddWithValue("@Nom_Producto", (gvProducto.Rows[e.RowIndex].FindControl("txtProductos") as TextBox).Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Des_Producto", (gvProducto.Rows[e.RowIndex].FindControl("txtDescripción") as TextBox).Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@Valor_Producto", (gvProducto.Rows[e.RowIndex].FindControl("txtValor") as TextBox).Text.Trim());
                        Sqlcmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvProducto.DataKeys[e.RowIndex].Value.ToString()));
                        Sqlcmd.ExecuteNonQuery();
                        gvProducto.EditIndex = - 1;
                        PopulateGridview();
                        lblSuccessMessage.Text = "Producto Modificado";
                        lblErrorMessage.Text = "";
                    }                
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvProducto_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection Sqlcon = new SqlConnection(ConectarDataBase))
                {
                    Sqlcon.Open();
                    String query = "DELETE FROM Productos WHERE ProductoID = @id";
                    SqlCommand Sqlcmd = new SqlCommand(query, Sqlcon);                   
                    Sqlcmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvProducto.DataKeys[e.RowIndex].Value.ToString()));
                    Sqlcmd.ExecuteNonQuery();                    
                    PopulateGridview();
                    lblSuccessMessage.Text = "Producto Eliminado";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/Opciones.aspx");
        }
    }
}