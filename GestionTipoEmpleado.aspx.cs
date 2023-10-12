using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Referencias a las capas Aplicación y Dominio
using CapaAplicacion;
using CapaDominio;


namespace Guia_5___Progra_II
{
    public partial class GestionTipoEmpleado : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private TipoEmpleado ObtenerEntidad()
        {
            // Definimos el objeto de tipo "TipoEmpleado"
            TipoEmpleado ObjTipoEmpleado = new TipoEmpleado();
            // Asignamos valores a los atributos del objeto
            ObjTipoEmpleado.ID = TxtIdTipoEmp.Text;
            ObjTipoEmpleado.Descripcion = TxtDescripcion.Text;
            // Utilizamos un operador ternario para asignar el valor al campo "Estado"
            ObjTipoEmpleado.Estado = DDListEstado.SelectedValue == "Activo" ? true : false;
            // Retornamos el objeto
            return ObjTipoEmpleado;
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            // Registramos el tipo de empleado
            TipoEmpleado ObjTipoEmpleado = ObtenerEntidad();
            // Enviar datos a la capa de Aplicación
            bool Respuesta = TipoEmpleadoN.getInstance().RegistrarTipoEmpleado(ObjTipoEmpleado);
            if (Respuesta == true)
            {
                Response.Write("<script>alert('REGISTRO CORRECTO')</script>");
            }
            else
            {
                Response.Write("<script>alert('NO SE PUDO REALIZAR EL REGISTRO')</script>");
            }

            //Limpio los textbox
            TxtDescripcion.Text = "";
            TxtIdTipoEmp.Text = "";
        }
    }
}