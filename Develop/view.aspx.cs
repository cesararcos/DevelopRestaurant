using Access;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Develop
{
    public partial class view : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var contexto = new BaseContext();
            
            if (!IsPostBack)
            {
                dpwPeriodos.Items.Insert(0, new ListItem("Ninguno", "-1"));
                first();
            }
            else
            {
                first();
            }
        }

        private void first()
        {
            var contexto = new BaseContext();
            //var x = contexto.Context.VistaMeseros().ToList();
            var xx = contexto.Context.ListaMeseros().ToList();
        }

        protected void dpwPeriodos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["userCode"] = dpwPeriodos.SelectedValue;
            //Session["IdValor"] = txtConsultaxValor.Text;
        }

        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            Session["IdValor"] = txtConsultaxValor.Text;
            //Session["IdValorMes"] = dpwPeriodos.SelectedValue;
            Session["userCode"] = dpwPeriodos.SelectedValue;
        }
    }
}