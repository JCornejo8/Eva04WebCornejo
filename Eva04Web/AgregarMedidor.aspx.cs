using Model;
using Model.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eva04Web
{
    public partial class AgregarMedidor : System.Web.UI.Page
    {
        private IMedidorDAL medidoresDAL = new MedidorDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            Medidor medidor = new Medidor();
            medidor.NumeroMedidor = Convert.ToInt32(this.numeroTxt.Text.Trim());
            medidor.TipoMedidor = this.tipoMedidorRbl.SelectedValue;

            this.medidoresDAL.AgregarMedidor(medidor);
            Response.Redirect("MostrarMedidores.aspx");
        }
    }
}