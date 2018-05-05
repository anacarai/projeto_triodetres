using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class CadastroProduto : System.Web.UI.Page
    {
        private bancodadosEntities entity = new bancodadosEntities();

        private cadastro_produto produto = new cadastro_produto();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LimparCampos()
        {
            txtDescricao.Text = string.Empty;
            txtMarca.Text = string.Empty;
            txtUnMedida.Text = string.Empty;
            txtDescricao.Text = string.Empty;
            txtDataCadastro.Text = string.Empty;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            produto.descricao = txtDescricao.Text;
            produto.marcaitem = txtMarca.Text;
            produto.unidademedida = txtUnMedida.Text;
            produto.departamento = txtDepartamento.Text;
            produto.datacadastro = Convert.ToDateTime(txtDataCadastro.Text);

            entity.cadastro_produto.Add(produto);

            entity.SaveChanges();    
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            LimparCampos();
        }
    }
}