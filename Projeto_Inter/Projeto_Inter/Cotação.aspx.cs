﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Inter
{
    public partial class Cotação : System.Web.UI.Page
    {
        private bancodadosEntities entity = new bancodadosEntities();

        private cotacao cotacao = new cotacao();

        protected void Page_Load(object sender, EventArgs e)
        {
            //lucas rossi
        }
        public void LimparCampos()
        {
            txtNumero.Text = string.Empty;
            txtDataReq.Text = string.Empty;
            txtFuncSolicit.Text = string.Empty;
            txtDepartamento.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var lista = entity.requisicao.Where(x => x.idreq.ToString().StartsWith(txtNumero.Text)).OrderBy(x => x.idreq).ToList();
            gridRequisicoes.DataSource = lista;
            gridRequisicoes.DataBind();
        }
    }
}