using Access;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Develop
{
    public partial class Add : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var contexto = new BaseContext();

            if (!IsPostBack)
            {
                var listaIdMeseros = contexto.Context.ListaMeserosId().ToList();
                foreach (var item in listaIdMeseros)
                {
                    
                    dpwIdMesero.Items.Add(item.IdMesero.ToString());
                    
                    //dpwIdMesero.SelectedIndex = 0;
                }
                dpwIdMesero.Items.Insert(0, new ListItem("SELECCIONE UNA OPCIÓN", "-1"));

            }
            else
            {
                
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var contexto = new BaseContext();
            //var x = contexto.Context.InstertarPrueba(txtMesa.Text, txtNombreMesa.Text, Convert.ToBoolean(dpReservada.SelectedValue), dpPuestos.SelectedValue);
            var x = contexto.Context.AdicionarDatos(Convert.ToInt32(txtIdentificacion.Text), txtNombres.Text, txtApellidos.Text, txtDireccion.Text, txtTelefono.Text, Convert.ToInt32(txtMesa.Text), txtNombreMesa.Text,
                Convert.ToBoolean(dpReservada.SelectedValue), dpPuestos.SelectedValue, Convert.ToInt32(dpwIdMesero.SelectedValue), txtPlato.Text, Convert.ToInt32(txtValor.Text), Convert.ToInt32(txtIdSupervisor.Text),
                txtNombresSupervisor.Text, txtApellidosSupervisor.Text, txtEdadSupervisor.Text, txtAntiguedadSupervisor.Text);
            var a = x.ToList()[0].Result;

            if (a == "1")
            {
                limpiar();

                string script = "alert(\"Registros guardados satisfactoriamente\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                string script = "alert(\"Ya existe los registros en sistema\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }

        protected void dpwIdMesero_SelectedIndexChanged(object sender, EventArgs e)
        {
            var contexto = new BaseContext();
            var listaIdMeseros = contexto.Context.listaEscogeDatosMesero(dpwIdMesero.SelectedValue);
            foreach (var item in listaIdMeseros)
            {
                //dpwIdMesero.Items.Add(item.Nombres);
                txtNombresMesero.Text = item.Nombres;
                txtApellidosMesero.Text = item.Apellidos;
                txtEdad.Text = item.Edad;
                txtAntiguedad.Text = item.Antiguedad;
            }
            if (dpwIdMesero.SelectedValue == "-1")
            {
                txtNombresMesero.Text = "";
                txtApellidosMesero.Text = "";
                txtEdad.Text = "";
                txtAntiguedad.Text = "";
            }
        }

        //protected void dpwIdMesero_TextChanged(object sender, EventArgs e)
        //{
        //    //var contexto = new BaseContext();
        //    //var listaIdMeseros = contexto.Context.ListaMeserosId().ToList();
        //    //foreach (var item in listaIdMeseros)
        //    //{
        //    //    dpwIdMesero.Items.Add(item.IdMesero.ToString());
        //    //}
        //}

        private void limpiar()
        {
            txtIdentificacion.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtMesa.Text = "";
            txtNombreMesa.Text = "";
            txtPlato.Text = "";
            txtValor.Text = "";
            txtIdSupervisor.Text = "";
            txtNombresSupervisor.Text = "";
            txtApellidosSupervisor.Text = "";
            txtEdadSupervisor.Text = "";
            txtAntiguedadSupervisor.Text = "";
        }
    }
}