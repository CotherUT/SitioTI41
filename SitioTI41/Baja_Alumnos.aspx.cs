using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioTI41
{
    public partial class Baja_Alumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int cotIdAlumno;
            cotIdAlumno = int.Parse(tbAlumno.Text);

            //Crear un objeto para acceder al DataSet y al tableAdapter
            utTableAdapters.AlumnosTableAdapter taId = new utTableAdapters.AlumnosTableAdapter();
            //Llamar a traves del objeto que acabamos de crear el metodo Delete
            taId.Delete(cotIdAlumno);
            //Recargar la pagina
            Response.Redirect("Baja_Alumnos.aspx");
        }
    }
}