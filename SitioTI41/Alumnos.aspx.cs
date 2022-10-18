using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SitioTI41
{
    public partial class Alumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, ImageClickEventArgs e)

        {
            string SQLInsert;
            SqlConnection SqlCon = new SqlConnection("Data Source=LAB10-PC09; Initial Catalog= UT41; Integrate Security= True");
            SqlCommand SQLcmd = new SqlCommand();
            using (SqlCon)
            {
                SqlCon.Open(); //Abre la coneccion a la BD
                SQLcmd.Connection = SqlCon;


                //Declaracion de variables para tomar los valores
                //Que el usuario ingresa en cada uno de los campos
                string cotNombre, cotApaterno, cotAmaterno, cotEmail;
                char cotSexo;
                int cotCarrera, cotGrupo;

                //Asignar los valores
                cotNombre = tbNombres.Text;
                cotApaterno = tbPaterno.Text;
                cotAmaterno = tbMaterno.Text;
                cotEmail = tbEmail.Text;
                cotSexo = char.Parse(rblSexo.Text);
                cotCarrera = int.Parse(ddlCarrera.Text);
                cotGrupo = int.Parse(ddlGrupo.Text);

                //Proceso de insercion en la tabla alumno de la BD
                SQLInsert = "isnert into Alumnos(nombres, ap_paterno, ap_materno, sexo, email, id_grupo, id_carrera)" +
                    "values ('{0}', '{1}', '{2}', '{3}', '{4}', {5}, {6}",cotNombre, cotApaterno, cotAmaterno, cotSexo, cotEmail, cotGrupo, cotCarrera);

                SQLcmd.CommandText = SQLInsert;
                SQLcmd.ExecuteNonQuery();
            }

        }
    }
}