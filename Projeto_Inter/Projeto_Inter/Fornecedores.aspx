<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Fornecedores.aspx.cs" Inherits="Projeto_Inter.Fornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="80px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server" Width="533px" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    
    <fieldset>
      <legend>Dados da Empresa</legend> 
    <asp:Label ID="Label5" runat="server" Text="CNPJ"></asp:Label>
    <asp:TextBox ID="txtCNPJ" runat="server" Width="303px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Inscrição Estadual"></asp:Label>
    <asp:TextBox ID="txtIE" runat="server" Width="351px" CssClass="form-control"></asp:TextBox>
    </fieldset>
    <br />
    <br />

    <fieldset>
    <legend>Endereço</legend>
    <asp:Label ID="Label9" runat="server" Text="CEP"></asp:Label>
    <asp:TextBox ID="txtCEP" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Logradouro"></asp:Label>
    <asp:TextBox ID="txtLogradouro" runat="server" Width="304px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label11" runat="server" Text="Número"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" Width="65px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" Text="Complemento"></asp:Label>
    <asp:TextBox ID="txtComplemento" runat="server" Width="157px" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Bairro"></asp:Label>
    <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" Text="Cidade"></asp:Label>
    <asp:TextBox ID="txtCidade" runat="server" CssClass="form-control"></asp:TextBox>
    </fieldset>
    <br />
    <br />

    <fieldset>
    <legend>Contato</legend>
    <asp:Label ID="Label16" runat="server" Text="Telefone"></asp:Label>
    <asp:TextBox ID="txtTelefone" runat="server" Width="183px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label17" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="408px" CssClass="form-control"></asp:TextBox>
    </fieldset>
    <br />
    <p>
    </p>

    <br />
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="254px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
    <asp:TextBox ID="txtDataCadastro" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-secondary" />
    <asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-secondary" />
    <asp:Button ID="btnAlterar" runat="server" Text="Alterar" CssClass="btn btn-secondary" />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-secondary" />
</asp:Content>
