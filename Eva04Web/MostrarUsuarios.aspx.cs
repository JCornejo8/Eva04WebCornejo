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
    public partial class MostrarUsuarios : System.Web.UI.Page
    {
        private IUsuarioDAL usuariosDAL = new UsuarioDALDB();

        private void cargaGrilla(List<Usuario> usuarios)
        {
            this.grillaUsuario.DataSource = usuarios;
            this.grillaUsuario.DataBind();
        }

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }
        }
        
        private void cargaGrilla()
        {
            List<Usuario> usuarios;
           
            usuarios = this.usuariosDAL.ObtenerUsuarios();
            this.cargaGrilla(usuarios);
        }

        protected void estadoDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.cargaGrilla();
        }
        protected void grillaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int IdUsuario = Convert.ToInt32(e.CommandArgument);
                this.usuariosDAL.EliminarUsuario(IdUsuario);
                this.cargaGrilla();
            }
        }
    }
}