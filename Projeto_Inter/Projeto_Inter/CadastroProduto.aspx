<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CadastroProduto.aspx.cs" Inherits="Projeto_Inter.CadastroProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="80px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="533px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Marca"></asp:Label>
    <asp:TextBox ID="txtMarca" runat="server" Width="303px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Unidade de Medida"></asp:Label>
    <asp:TextBox ID="txtUnMedida" runat="server" Width="176px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" Text="CEP"></asp:Label>
    <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
    <br />

    <br />
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="254px"></asp:TextBox>
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
    <asp:TextBox ID="txtDataCadastro" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
    <asp:Button ID="btnAlterar" runat="server" Text="Alterar" />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" />
    <br />
</asp:Content>
