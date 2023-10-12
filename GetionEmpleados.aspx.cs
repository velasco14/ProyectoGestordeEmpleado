using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Referencias a la capa Aplicacion y Dominio
using CapaAplicacion;
using CapaDominio;

namespace Guia_5___Progra_II
{
    public partial class GetionEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private Empleado ObtenerEntidad()
        {
            //Defino el objeto de tipo Empleado
            Empleado ObjEmpleado = new Empleado();

            //Asigno valores de los atributos del objeto
            ObjEmpleado.ID = txtCodigoEmpleado.Text;
            ObjEmpleado.IdTipoEmpleado = txtCodigoEmpleado.Text;
            ObjEmpleado.Nombres = txtNombres.Text;
            ObjEmpleado.Apellidos = txtApellidos.Text;
            ObjEmpleado.DUI = txtDUI.Text;
            //Utilice un operador ternario para asignar el valor al campo "Estado"
            ObjEmpleado.Estado = DDListEstado.SelectedValue == "Activo" ? true : false; 
            //Convirtiendo la imagen como un arreglo de Bytes
            byte[] imagenBytes = FileUpload1.FileBytes;
            //Asigno el arreglo de Byte
            ObjEmpleado.Imagen = imagenBytes;
            ObjEmpleado.Usuario = txtUsuario.Text;
            ObjEmpleado.Clave = txtClave.Text;


            //Retornar el objeto
            return ObjEmpleado;

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            //Registro el empleado
            Empleado ObjRegistroEmpleado = ObtenerEntidad();

            //Envio los datos a la capa aplicacion 
            bool Respuesta = RegistroEmpleadoN.getInstance().RegistrarEmpleado(ObjRegistroEmpleado);

            if (Respuesta == true)
            {
                Response.Write("<script>alert('REGISTRO CORRECTO')</script>");
            }
            else
            {
                Response.Write("<script>alert('NO SE PUDO REALIZAR EL REGISTRO')</script>");
            }

            //Limpio los textbox
            txtCodigoEmpleado.Text = "";
            txtIDTipoEmpleado.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtDUI.Text = "";
            txtUsuario.Text = "";
            txtClave.Text = "";
        }


    }
}