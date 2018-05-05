<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Funcionarios.aspx.cs" Inherits="Projeto_Inter.Funcionarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" Width="80px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server" Width="533px"></asp:TextBox>
    <br />
    <br />
    <fieldset>
        <legend> Dados Pessoais </legend>
    <asp:Label ID="Label5" runat="server" Text="CPF"></asp:Label>
    <asp:TextBox ID="txtCPF" runat="server" Width="303px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="RG"></asp:Label>
    <asp:TextBox ID="txtRG" runat="server" Width="303px"></asp:TextBox>
    </fieldset>
    <br />
    <br />
    
    <fieldset>
        <legend>Endereço</legend>
    <asp:Label ID="Label9" runat="server" Text="CEP"></asp:Label>
    <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Logradouro"></asp:Label>
    <asp:TextBox ID="txtLogradouro" runat="server" Width="304px"></asp:TextBox>
    <asp:Label ID="Label11" runat="server" Text="Número"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" Width="65px"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" Text="Complemento"></asp:Label>
    <asp:TextBox ID="txtComplemento" runat="server" Width="157px"></asp:TextBox>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Bairro"></asp:Label>
    <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" Text="Cidade"></asp:Label>
    <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
        </fieldset>
    <br />
    <br />

    <fieldset>
    <legend>Contato</legend>
    <asp:Label ID="Label16" runat="server" Text="Telefone"></asp:Label>
    <asp:TextBox ID="txtTelefone" runat="server" Width="183px"></asp:TextBox>
    <asp:Label ID="Label17" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="408px"></asp:TextBox>
    </fieldset>
    <p>
        <br />
    </p>

    <br />
    <asp:Label ID="Label18" runat="server" Text="Cargo"></asp:Label>
    <asp:TextBox ID="txtCargo" runat="server"></asp:TextBox>
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="254px"></asp:TextBox>
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
    <asp:TextBox ID="txtDataCadastro" runat="server" TextMode="Date"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
    <asp:Button ID="btnNovo" runat="server" OnClick="btnNovo_Click" Text="Novo" />
    <asp:Button ID="btnAlterar" runat="server" Text="Alterar" />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" />

</asp:Content>
