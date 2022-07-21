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
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        private IUsuarioDAL usuariosDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.Nombre = this.nombreTxt.Text.Trim();
            usuario.Rut = this.rutTxt.Text.Trim();
            usuario.Contraseña = this.contraseñaTxt.Text.Trim();
            usuario.Correo = this.correoTxt.Text.Trim();
        

            this.usuariosDAL.AgregarUsuario(usuario);
            Response.Redirect("MostrarUsuarios.aspx");
        }
    }
}