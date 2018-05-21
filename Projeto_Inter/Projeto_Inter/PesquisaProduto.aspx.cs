using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class PesquisaProduto : System.Web.UI.Page
    {
        private bancodadosEntities entity = new bancodadosEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarTabela();
        }

        public void CarregarTabela()
        {
            List<cadastro_produto> produtos = entity.cadastro_produto.ToList();
            gridMateriais.DataSource = produtos;
            gridMateriais.DataBind();
        }

        protected void gridMateriais_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //gridMateriais.DataSource = produtos;
            gridMateriais.PageIndex = e.NewPageIndex;
            gridMateriais.DataBind();
        }
    }
}