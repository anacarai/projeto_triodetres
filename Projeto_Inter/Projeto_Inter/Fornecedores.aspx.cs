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
    }
}