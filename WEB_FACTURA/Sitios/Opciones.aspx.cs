using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB_FACTURA.Sitios
{
    public partial class Opciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/RegistroPersonas.aspx");
        }

        protected void btnProductos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/RegProductos.aspx");
        }

        protected void btnFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/DatosFactura.aspx");
        }

        protected void btnClientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/RegCliente.aspx");
        }
    }
}