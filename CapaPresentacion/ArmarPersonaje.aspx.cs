using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Personajes.CapaDatos;

namespace Personajes.CapaPresentacion
{
    public partial class ArmarPersonaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //metodo para traer razas de la base
        private List<Raza> CargarRazas()
        {
            using (BDPersonajesEntities contexto = new BDPersonajesEntities())

            {    
                return contexto.Razas.OrderBy(a => a.Raza1).ToList();//aca dice Raza1 porque me lo creo asi.
            }
        }
        
        //metodo para traer clases de la base
        private List<Clas> CargarClases(int razaID)
        {
            using (BDPersonajesEntities contexto = new BDPersonajesEntities())
            {
                return contexto.Clases.OrderBy(a => a.RazaID.Equals(razaID)).OrderBy(a => a.Clase).ToList();
            }
        }

        //funcion para hacer el bind de la DDL de Razas
         private void BindRazas(DropDownList ddlRaza, List<Raza> razas)
        {
            ddlRaza.Items.Clear();
            ddlRaza.Items.Add(new ListItem { Text= "Elija la raza", Value="0" });
            ddlRaza.DataSource = razas;
            ddlRaza.DataBind();
        }

        //Aca hago el bind de la DDL de Clases
        private void BindClases( DropDownList ddlClases, int RazaID)
        {
            ddlClases.Items.Clear();
            ddlClases.Items.Add(new ListItem { Text = "Elija la clase", Value = "0" });
        }
        protected void ddlRaza_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlClase_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPersonajes_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}