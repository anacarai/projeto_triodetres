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
            CarregarTabela();
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
            //txtDepartamento.Text = string.Empty;
            txtDataCadastro.Text = string.Empty;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            funcionario.nome = txtNome.Text;
            funcionario.cpf = txtCPF.Text;
            funcionario.rg = txtRG.Text;
            funcionario.cep = txtCEP.Text;
            funcionario.telefone = txtTelefone.Text;
            funcionario.email = txtEmail.Text;
            funcionario.logradouro = txtLogradouro.Text;
            funcionario.numero = Convert.ToInt32(txtNumero.Text.ToString());
            funcionario.complemento = txtComplemento.Text;
            funcionario.bairro = txtBairro.Text;
            funcionario.cidade = txtCidade.Text;
            funcionario.cargo = txtCargo.Text;
            //funcionario.departamento = txtDepartamento.Text;
            funcionario.datacadastro = Convert.ToDateTime(txtDataCadastro.Text.ToString());

            entity.cadastro_funcionario.Add(funcionario);

            entity.SaveChanges();
            CarregarTabela();
            LimparCampos();
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
            if(e.CommandName.ToString().Equals("Remover"))
            {
                //Remover
                cadastro_funcionario funcionario = entity.cadastro_funcionario.Find(Convert.ToInt32(idSelecionado));
                entity.cadastro_funcionario.Remove(funcionario);
                entity.SaveChanges();
                CarregarTabela();                
            }

            else if(e.CommandArgument.ToString().Equals("Alterar"))
            {
                cadastro_funcionario funcionario = entity.cadastro_funcionario.Find(Convert.ToInt32(idSelecionado));
                txtID.Text = funcionario.id.ToString();
                txtNome.Text = funcionario.nome;
                txtCPF.Text = funcionario.cpf;
                txtRG.Text = funcionario.rg;
                txtTelefone.Text = funcionario.telefone;
                txtEmail.Text = funcionario.email;
                txtCEP.Text = funcionario.cep;
                txtLogradouro.Text = funcionario.logradouro;
                txtNumero.Text = funcionario.numero.ToString();
                txtComplemento.Text = funcionario.complemento;
                txtBairro.Text = funcionario.bairro;
                txtCidade.Text = funcionario.cidade;
                txtCargo.Text = funcionario.cargo;
                //txtDepartamento.Text = funcionario.departamento;
                txtDataCadastro.Text = funcionario.datacadastro.ToString();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.DataSource = funcionario;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}