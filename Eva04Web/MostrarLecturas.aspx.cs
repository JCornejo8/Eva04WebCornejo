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
    public partial class MostrarLecturas : System.Web.UI.Page
    {
        private ILecturaDAL lecturasDAL = new LecturaDALDB();
        private void cargaGrilla(List<Lectura> lecturas)
        {
            this.grillaLectura.DataSource = lecturas;
            this.grillaLectura.DataBind();
        }
        private void LecturaGrilla()
        {
            List<Lectura> lecturas;
            lecturas = this.lecturasDAL.ObtenerLecturas();
            this.cargaGrilla(lecturas);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LecturaGrilla();
            }
        }

        protected void grillaLectura_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int IdLectura = Convert.ToInt32(e.CommandArgument);
                this.lecturasDAL.EliminarLectura(IdLectura);
                this.LecturaGrilla();
            }
        }
    }
}