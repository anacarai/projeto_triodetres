<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CadastroProduto.aspx.cs" Inherits="Projeto_Inter.CadastroProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" Width="80px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtDescricao" runat="server" Width="533px" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Marca"></asp:Label>
    <asp:TextBox ID="txtMarca" runat="server" Width="303px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Unidade de Medida"></asp:Label>
    <asp:TextBox ID="txtUnMedida" runat="server" Width="176px" CssClass="form-control"></asp:TextBox>
    <br />

    <br />
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="254px" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
    <asp:TextBox ID="txtDataCadastro" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-secondary" />
    <asp:Button ID="btnNovo" runat="server" OnClick="btnNovo_Click" Text="Novo" CssClass="btn btn-secondary" />
    <asp:Button ID="btnAlterar" runat="server" Text="Alterar" CssClass="btn btn-secondary" />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-secondary" />
    <br />
</asp:Content>
