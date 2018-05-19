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

        public void CarregarTabela()
        {
            List<cadastro_produto> produto = entity.cadastro_produto.ToList();
            GridView1.DataSource = produto;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            {
                //Linha selecionada
                int index = Convert.ToInt32(e.CommandArgument);

                //ID da linha selecionada
                int idSelecionado = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text.ToString());
                if (e.CommandName.ToString().Equals("Remover"))
                {
                    //Remover
                    cadastro_produto produto = entity.cadastro_produto.Find(Convert.ToInt32(idSelecionado));
                    entity.cadastro_produto.Remove(produto);
                    entity.SaveChanges();
                    CarregarTabela();
                }

                else if (e.CommandArgument.ToString().Equals("Alterar"))
                {
                    cadastro_produto produto = entity.cadastro_produto.Find(Convert.ToInt32(idSelecionado));
                    txtDescricao.Text = produto.descricao;
                    txtID.Text = produto.id.ToString();
                    txtMarca.Text = produto.marcaitem;
                    txtUnMedida.Text = produto.unidademedida;
                    txtDataCadastro.Text = produto.datacadastro.ToString();
                }
            }
        }
    }
}