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
    public partial class AgregarLectura : System.Web.UI.Page
    {
        private IMedidorDAL medidoresDAL = new MedidorDALDB();
        private ILecturaDAL lecturasDAL = new LecturaDALDB();
        private IUsuarioDAL usuariosDAL = new UsuarioDALDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.MedidorDDL.DataSource = this.medidoresDAL.ObtenerMedidores();
                this.MedidorDDL.DataTextField = "NumeroMedidor";
                this.MedidorDDL.DataValueField = "IdMedidor";
                this.MedidorDDL.DataBind();
                
                this.usuarioDDL.DataSource = this.usuariosDAL.ObtenerUsuarios();
                this.usuarioDDL.DataTextField = "Nombre";
                this.usuarioDDL.DataValueField = "IdUsuario";
                this.usuarioDDL.DataBind();
            }

        }
        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            Lectura lectura = new Lectura();
            lectura.Consumo = this.lecturaTxt.Text.Trim();
            lectura.IdUsuario = Convert.ToInt32(this.usuarioDDL.SelectedItem.Value);
            lectura.IdMedidor = Convert.ToInt32(this.MedidorDDL.SelectedItem.Value);
            lectura.FechaLectura = DateTime.Now;
            this.lecturasDAL.AgregarLectura(lectura);
            Response.Redirect("MostrarLecturas.aspx");
        }
    }
}