using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Compras : System.Web.UI.Page
    {

        private bancodadosEntities entity = new bancodadosEntities();

        private compra compra = new compra();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void limpar_campos()
        {
            txtDataCot.Text = string.Empty;
            txtDepartamento.Text = string.Empty;
            txtFuncAprov.Text = string.Empty;
            txtFuncSolicit.Text = string.Empty;
            txtNumero.Text = string.Empty;
        }
        protected void btnConfirmaCompra_Click(object sender, EventArgs e)
        {
            compra.idcotacao = Convert.ToInt32(txtNumero.Text);
            compra.datacotacao = Convert.ToDateTime(txtDataCot.Text);
            compra.funcionariosolicit = txtFuncSolicit.Text;
            compra.departamento = txtDepartamento.Text;
            compra.funcionarioaprov = txtFuncAprov.Text;

            entity.compra.Add(compra);

            entity.SaveChanges();
        }
    }
}