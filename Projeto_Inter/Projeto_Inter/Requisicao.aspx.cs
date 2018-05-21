using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Requisicao : System.Web.UI.Page
    {
        private bancodadosEntities entity = new bancodadosEntities();

        private requisicao requisicao = new requisicao();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void limpar_campos()
        {
            txtDataReq.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtCodigo.Text = string.Empty;
            txtDescricao.Text = string.Empty;
            txtQuantidade.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            requisicao.idreq = Convert.ToInt32(txtNumero.Text);
            requisicao.datareq = Convert.ToDateTime(txtDataReq.Text);
            requisicao.iditem = Convert.ToInt32(txtCodigo.Text);
            requisicao.descricao = txtDescricao.Text;
            requisicao.quantidade = Convert.ToInt32(txtQuantidade.Text);
            requisicao.comentario = txtJustificativa.Text;
        }

        protected void btnSalvarReq_Click(object sender, EventArgs e)
        {
            entity.requisicao.Add(requisicao);

            entity.SaveChanges();
        }

        protected void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}