using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioTI41
{
    public partial class subir_archivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubirArchivos_Click(object sender, EventArgs e)
        {
            //Si el usuario le dio al boton de examinar
            if (archivos.HasFile)
            {
                try
                {
                    //El nombre que tiene el archivo
                    string nombre_archivo = Path.GetFileName(archivos.FileName);
                    //La ruta donde se va a guardar el archivo
                    archivos.SaveAs("C:\\Users\\LAB10-PC10\\Documents\\archivos_sitioti41\\" + archivos.FileName);
                    //redireccionar al usuario cunado el archivo se ha subido conexito
                    Response.Redirect("Subidos_Exitosos.html");
                }
                catch (Exception ex)
                {
                    lblError.Text = "Estado de carga: No se puede subir el archivo, ocurrio el siguiente error: " + ex.Message;
                }
            }
        }
    }
}