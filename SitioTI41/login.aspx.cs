using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioTI41
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtLogin_Click(object sender, EventArgs e)
        {
            if(TbUsuario.Text != "" && TbContrasenia.Text != "")
            {
                string user, pass;
                user = TbUsuario.Text;
                pass = TbContrasenia.Text;

                // Objeto para accesar al DataSet ut
                utTableAdapters.UsuariosTableAdapter taLogin = new utTableAdapters.UsuariosTableAdapter();
                // Objeto para accesar al tableAdapter
                ut.UsuariosDataTable dtLogin = taLogin.GetData(user, pass);
                int cantidad = dtLogin.Count;
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('!Ususario y/o Contrasenia incorrecta');", true);
                }
                else
                {
                    Response.Redirect("Alumnos.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('!Ususario y/o Contrasenia vacios 😔');", true);
            }
        }
    }
}