using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Obtem valor que está alocado na sessão do servidor
            usuarios u = (usuarios)Session["usuariologado"];

            if (u != null)
            {
                lblUsuarioLogado.Text = u.nome;
            }

            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["usuariologado"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void btnFuncionarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("Funcionarios.aspx");
        }

        protected void btnFornecedores_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fornecedores.aspx");
        }

        protected void btnCadProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroProduto.aspx");
        }

        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            Response.Redirect("PesquisaProduto.aspx");
        }

        protected void btnReq_Click(object sender, EventArgs e)
        {
            Response.Redirect("Requisicao.aspx");
        }

        protected void btnCotacao_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cotação.aspx");
        }

        protected void btnCompras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Compras.aspx");
        }
    }
}