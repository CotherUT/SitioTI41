using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioTI41
{
    public partial class Modificar_Alumnos : System.Web.UI.Page
    {
        public static int cotIdAlumno; //variable declarada de forma global para que sea vista portodos los eventos
        protected void Page_Load(object sender, EventArgs e)
        {
            tbDatos.Visible = false;
            tbBotones.Visible = false;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if(tbIdAlumno.Text != "")
            {
                cotIdAlumno = int.Parse(tbIdAlumno.Text);
                utTableAdapters.AlumnosTableAdapter taAlumnos = new utTableAdapters.AlumnosTableAdapter();
                ut.AlumnosDataTable dtAlumno = taAlumnos.GetData(cotIdAlumno);
                int total_registros = dtAlumno.Count;
                if(total_registros > 0)
                {
                    ut.AlumnosRow rowRegistro = dtAlumno[0]; //Toda la informacion del registro
                    tbNombres.Text = rowRegistro.nombres;
                    tbPaterno.Text = rowRegistro.ap_paterno;
                    tbMaterno.Text = rowRegistro.ap_materno;
                    tbEmail.Text = rowRegistro.email;
                    rblSexo.SelectedValue = rowRegistro.sexo;
                    ddlGrupo.SelectedValue = rowRegistro.id_grupo.ToString();
                    ddlCarrera.SelectedValue = rowRegistro.id_carrera.ToString();

                    tbDatos.Visible = true;
                    tbBotones.Visible = true;
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('No se encontro el ID a modificar!');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('Campo ID vacio, ingresa un ID correcto');", true);
            }
        }

        protected void btnGuardar_Click(object sender, ImageClickEventArgs e)
        {
            string cotNombres, cotPaterno, cotMaterno, cotEmail;
            char cotSexo;
            int cotIdCarrera, cotIdGrupo;

            cotNombres = tbNombres.Text;
            cotPaterno = tbPaterno.Text;
            cotMaterno = tbPaterno.Text;
            cotEmail = tbEmail.Text;
            cotSexo = char.Parse(rblSexo.Text);
            cotIdGrupo = int.Parse(ddlGrupo.Text);
            cotIdCarrera = int.Parse(ddlCarrera.Text);

            utTableAdapters.AlumnosTableAdapter taAlumnos = new utTableAdapters.AlumnosTableAdapter();
            taAlumnos.Update(cotNombres, cotPaterno,cotMaterno,cotSexo.ToString(),cotEmail,cotIdGrupo,cotIdCarrera,cotIdAlumno);

            string script = "javascript:alert('Campo ID vacio, ingresa un ID correcto');";
            ScriptManager.RegisterStartupScript(this, GetType(), "alerta", script, true);
        }
    }
}