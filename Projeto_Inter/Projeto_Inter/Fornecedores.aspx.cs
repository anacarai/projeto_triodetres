using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Fornecedores : System.Web.UI.Page
    {
        bancodadosEntities entity = new bancodadosEntities();

        private cadastro_fornecedor fornecedor = new cadastro_fornecedor();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LimparCampos()
        {
            txtNome.Text = string.Empty;
            txtCNPJ.Text = string.Empty;
            txtIE.Text = string.Empty;
            txtCEP.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtComplemento.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCidade.Text = string.Empty;
            txtDepartamento.Text = string.Empty;
            txtDataCadastro.Text = string.Empty;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            fornecedor.razaosocial = txtNome.Text;
            fornecedor.cnpj = txtCNPJ.Text;
            fornecedor.inscricaoest = txtIE.Text;
            fornecedor.cep = txtCEP.Text;
            fornecedor.telefone = txtTelefone.Text;
            fornecedor.email = txtEmail.Text;
            fornecedor.logradouro = txtLogradouro.Text;
            fornecedor.numero = Convert.ToInt32(txtNumero.Text.ToString());
            fornecedor.complemento = txtComplemento.Text;
            fornecedor.bairro = txtBairro.Text;
            fornecedor.cidade = txtCidade.Text;
            fornecedor.departamento = txtDepartamento.Text;
            fornecedor.datacadastro = Convert.ToDateTime(txtDataCadastro.Text.ToString());

            entity.cadastro_fornecedor.Add(fornecedor);

            entity.SaveChanges();
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            LimparCampos();
        }

        public void CarregarTabela()
        {
            List<cadastro_funcionario> funcionario = entity.cadastro_funcionario.ToList();
            GridView1.DataSource = funcionario;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //Linha selecionada
            int index = Convert.ToInt32(e.CommandArgument);

            //ID da linha selecionada
            int idSelecionado = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text.ToString());
            if (e.CommandName.ToString().Equals("Remover"))
            {
                //Remover
                cadastro_fornecedor fornecedor = entity.cadastro_fornecedor.Find(Convert.ToInt32(idSelecionado));
                entity.cadastro_fornecedor.Remove(fornecedor);
                entity.SaveChanges();
                CarregarTabela();
            }

            else if (e.CommandArgument.ToString().Equals("Alterar"))
            {
                cadastro_fornecedor fornecedor = entity.cadastro_fornecedor.Find(Convert.ToInt32(idSelecionado));
                txtID.Text = fornecedor.id.ToString();
                txtNome.Text = fornecedor.razaosocial;
                txtCNPJ.Text = fornecedor.cnpj.ToString();
                txtIE.Text = fornecedor.inscricaoest.ToString();
                txtTelefone.Text = fornecedor.telefone;
                txtEmail.Text = fornecedor.email;
                txtCEP.Text = fornecedor.cep;
                txtLogradouro.Text = fornecedor.logradouro;
                txtNumero.Text = fornecedor.numero.ToString();
                txtComplemento.Text = fornecedor.complemento;
                txtBairro.Text = fornecedor.bairro;
                txtCidade.Text = fornecedor.cidade;
                txtDepartamento.Text = fornecedor.departamento;
                txtDataCadastro.Text = fornecedor.datacadastro.ToString();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.DataSource = fornecedor;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}