using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Funcionarios : System.Web.UI.Page
    {
        private bancodadosEntities entity = new bancodadosEntities();

        private cadastro_funcionario funcionario = new cadastro_funcionario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LimparCampos()
        {
            txtNome.Text = string.Empty;
            txtCPF.Text = string.Empty;
            txtRG.Text = string.Empty;
            txtCEP.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtComplemento.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCidade.Text = string.Empty;
            txtCargo.Text = string.Empty;
            txtDepartamento.Text = string.Empty;
            txtDataCadastro.Text = string.Empty;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            funcionario.nome = txtNome.Text;
            funcionario.cpf = Convert.ToInt32(txtCPF.Text.ToString());
            funcionario.rg = Convert.ToInt32(txtRG.Text.ToString());
            funcionario.cep = txtCEP.Text;
            funcionario.telefone = txtTelefone.Text;
            funcionario.email = txtEmail.Text;
            funcionario.logradouro = txtLogradouro.Text;
            funcionario.numero = Convert.ToInt32(txtNumero.Text.ToString());
            funcionario.complemento = txtComplemento.Text;
            funcionario.bairro = txtBairro.Text;
            funcionario.cidade = txtCidade.Text;
            funcionario.cargo = txtCargo.Text;
            funcionario.departamento = txtDepartamento.Text;
            funcionario.datacadastro = Convert.ToDateTime(txtDataCadastro.Text.ToString());

            entity.cadastro_funcionario.Add(funcionario);

            entity.SaveChanges();
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            LimparCampos();
        }
    }
}