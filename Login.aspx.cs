using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Referencias a las capas correspondientes a comunicarse
using CapaAplicacion;
using CapaDominio;

namespace Guia_5___Progra_II
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            ////Variables para capturar lo que digite el usuario
            //string usuario = txtUsuario.Text;
            //string password = txtPassword.Text;

            ////Quemando datos "Inicializar variables"
            //string nombreUsuario = "Bryan";
            //string usuarioPassword = "123";

            ////Comprobar valores con lo que digite el usuario
            //if (usuario.Equals(nombreUsuario) && usuarioPassword.Equals(password))
            //{
            //    Response.Write("<script>alert('Bienvenido al sistema')</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Usuario o contraseña incorrecta')</script>");
            //}

            //Crear un objeto de tipo Empleado
            Empleado ObjEmpleado = EmpleadoN.getInstance().AccederSistema(txtUsuario.Text, txtPassword.Text);

            //Compara valores con lo que digita el usuaurio
            if (ObjEmpleado != null)
            {
                Response.Write("<script>alert('Bienvenido al sistema')</script>");

                //Llamar a la pagina maestra
                Response.Redirect("PanelGeneral.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario o contraseña incorrecta')</script>");
            }
        }

        
    }
}