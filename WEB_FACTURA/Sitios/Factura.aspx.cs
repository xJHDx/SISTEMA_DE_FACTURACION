using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WEB_FACTURA.Sitios
{
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Fecha y N° factura
                lblnfactura.Text = Request.QueryString["nu"].ToString();
                lblfecha.Text = Request.QueryString["fe"].ToString();

                // DATOS CLIENTE
                nit.Text = Request.QueryString["nit"].ToString();
                empresa.Text = Request.QueryString["empresa"].ToString();
                dirreccion.Text = Request.QueryString["dirreccion"].ToString();
                telefonos.Text = Request.QueryString["telefonos"].ToString();
                ubicacion.Text = Request.QueryString["ubicacion"].ToString();
            }
            catch (Exception ex )
            {
                Label46.Text = "";
                Label46.Text = ex.Message;
            }

            try
            {
                // DATOS DE COMPRA 01
                lblcantidad01.Text = Request.QueryString["cantidad01"].ToString();
                int can01;
                int.TryParse(Request.QueryString["cantidad01"].ToString(), out can01);

                lblconcepto01.Text = Request.QueryString["concepto01"].ToString();

                lblvalor01.Text = Request.QueryString["valor01"].ToString();
                double va01;
                double.TryParse(Request.QueryString["valor01"].ToString(), out va01);

                lblrenta01.Text = Request.QueryString["renta01"].ToString();
                double ren01;
                double.TryParse(Request.QueryString["renta01"].ToString(), out ren01);

                // DATOS DE COMPRA 02
                lblcantidad02.Text = Request.QueryString["cantidad02"].ToString();
                int can02;
                int.TryParse(Request.QueryString["cantidad02"].ToString(), out can02);

                lblconcepto02.Text = Request.QueryString["concepto02"].ToString();

                lblvalor02.Text = Request.QueryString["valor02"].ToString();
                double va02;
                double.TryParse(Request.QueryString["valor02"].ToString(), out va02);

                lblrenta02.Text = Request.QueryString["renta02"].ToString();
                double ren02;
                double.TryParse(Request.QueryString["renta02"].ToString(), out ren02);

                // DATOS DE COMPRA 03
                lblcantidad03.Text = Request.QueryString["cantidad03"].ToString();
                int can03;
                int.TryParse(Request.QueryString["cantidad03"], out can03);

                lblconcepto03.Text = Request.QueryString["concepto03"].ToString();

                lblvalor03.Text = Request.QueryString["valor03"].ToString();
                double va03;
                double.TryParse(Request.QueryString["valor03"].ToString(), out va03);

                lblrenta03.Text = Request.QueryString["renta03"].ToString();
                double ren03;
                double.TryParse(Request.QueryString["renta03"].ToString(), out ren03);

                // DATOS DE COMPRA 04
                lblcantidad04.Text = Request.QueryString["cantidad04"].ToString();
                int can04;
                int.TryParse(Request.QueryString["cantidad04"], out can04);

                lblconcepto04.Text = Request.QueryString["concepto04"].ToString();

                lblvalor04.Text = Request.QueryString["valor04"].ToString();
                double va04;
                double.TryParse(Request.QueryString["valor04"].ToString(), out va04);

                lblrenta04.Text = Request.QueryString["renta04"].ToString();
                double ren04;
                double.TryParse(Request.QueryString["renta04"].ToString(), out ren04);

                // DATOS DE IMPORTE
                lblimpoiva.Text = Request.QueryString["impoiva"].ToString();
                double imiva;
                double.TryParse(Request.QueryString["impoiva"].ToString(), out imiva);
                lblimpoiva.Text = imiva.ToString();

                lblcuotaiva.Text = Request.QueryString["cuotaiva"].ToString();
                double coiva;
                double.TryParse(Request.QueryString["cuotaiva"].ToString(), out coiva);
                lblcuotaiva.Text = coiva.ToString();

                lblimporenta.Text = Request.QueryString["imporenta"].ToString();
                double imren;
                double.TryParse(Request.QueryString["imporenta"].ToString(), out imren);
                lblimporenta.Text = imren.ToString();

                lblcuotarenta.Text = Request.QueryString["cuotarenta"].ToString();
                double coren;
                double.TryParse(Request.QueryString["cuotarenta"].ToString(), out coren);
                lblcuotarenta.Text = coren.ToString();

                ren01 = ren01 / 100;
                ren02 = ren02 / 100;
                ren03 = ren03 / 100;
                ren04 = ren04 / 100;

                // FORMULAS TOTAL COMPRAS
                Double totalcompra01 = va01 * can01;
                lblcompraneto01.Text = totalcompra01.ToString();

                Double totalcompra02 = va02 * can02;
                lblcompraneto02.Text = totalcompra02.ToString();

                Double totalcompra03 = va03 * can03;
                lblcompraneto03.Text = totalcompra03.ToString();

                Double totalcompra04 = va04 * can04;
                lblcompraneto04.Text = totalcompra04.ToString();

                // FORMULAS VALOR NETO
                Double iva = 0.19;

                Double valoriva01 = (va01 * iva);
                Double valorren01 = (va01 * ren01);

                Double valoriva02 = (va02 * iva);
                Double valorren02 = (va02 * ren02);

                Double valoriva03 = (va03 * iva);
                Double valorren03 = (va03 * ren03);

                Double valoriva04 = (va04 * iva);
                Double valorren04 = (va04 * ren04);

                Double resp01 = ((valoriva01 + valorren01) + va01) * can01;
                lblvalorneto01.Text = resp01.ToString();

                Double resp02 = ((valoriva02 + valorren02) + va02) * can02;
                lblvalorneto02.Text = resp02.ToString();

                Double resp03 = ((valoriva03 + valorren03) + va03) * can03;
                lblvalorneto03.Text = resp03.ToString();

                Double resp04 = ((valoriva04 + valorren04) + va04) * can04;
                lblvalorneto04.Text = resp04.ToString();

                // FOMRULAS TOTAL IVA || RENTABILIDAD || TOTAL FACTURA
                Double totaliva = ((totalcompra01 + totalcompra02 + totalcompra03 + totalcompra04) * iva) + imiva + coiva;
                lbltotaliva.Text = totaliva.ToString();

                Double totalrenta = ((totalcompra01 * ren01) + (totalcompra02 * ren02) + (totalcompra03 * ren03) + (totalcompra04 * ren04) + (imren + coren));
                lbltotalrenta.Text = totalrenta.ToString();

                Double totalfactura = totalcompra01 + totalcompra02 + totalcompra03 + totalcompra04 + totaliva + totalrenta;
                lbltotalfactura.Text = totalfactura.ToString();
            }
            catch (Exception ex)
            {
                Label46.Text = "";
                Label46.Text = ex.Message;
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sitios/Opciones.aspx");
        }
    }
}