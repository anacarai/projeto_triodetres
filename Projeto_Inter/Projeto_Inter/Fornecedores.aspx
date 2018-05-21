<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Fornecedores.aspx.cs" Inherits="Projeto_Inter.Fornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
    <div class="row">
    <div class="col-1">
    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" Width="80px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
    </div>

    <div class="col-10">
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
    </div></div>
    
    <br />
    
    <fieldset>
      <legend>Dados da Empresa</legend> 
    <div class="row">
    <div class="col-3">
    <asp:Label ID="Label5" runat="server" Text="CNPJ"></asp:Label>
    <asp:TextBox ID="txtCNPJ" runat="server" Width="303px" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="col-4">
    <asp:Label ID="Label6" runat="server" Text="Inscrição Estadual"></asp:Label>
    <asp:TextBox ID="txtIE" runat="server" Width="351px" CssClass="form-control"></asp:TextBox>
    </div></div>
    </fieldset>
    <br />
    <br />

    <fieldset>
    <legend>Endereço</legend>
    <asp:Label ID="Label9" runat="server" Text="CEP"></asp:Label>
    <asp:TextBox ID="txtCEP" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="CEP"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <div class="row">
    <div class="col-4">
    <asp:Label ID="Label10" runat="server" Text="Logradouro"></asp:Label>
    <asp:TextBox ID="txtLogradouro" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
        </div>

    <div class="col-1">
    <asp:Label ID="Label11" runat="server" Text="Número"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" Width="65px" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-4">
    <asp:Label ID="Label12" runat="server" Text="Complemento"></asp:Label>
    <asp:TextBox ID="txtComplemento" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div></div>

    <div class="row">
    <div class="col-2">
    <asp:Label ID="Label13" runat="server" Text="Bairro"></asp:Label>
    <asp:TextBox ID="txtBairro" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div>
    
    <div class="col-2">
    <asp:Label ID="Label14" runat="server" Text="Cidade"></asp:Label>
    <asp:TextBox ID="txtCidade" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div>
    </fieldset>
    <br />
    <br />

    <fieldset>
    <legend>Contato</legend>
    <div class="row">
    <div class="col-2">
    <asp:Label ID="Label16" runat="server" Text="Telefone"></asp:Label>
    <asp:TextBox ID="txtTelefone" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-2">
    <asp:Label ID="Label17" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="400px" CssClass="form-control" placeholder="email@email.com.br"></asp:TextBox>
        </div></div>
    </fieldset>
    <br />

    <br />
    <div class="row">
    <div class="col-3">
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="254px" CssClass="form-control"></asp:TextBox>
        </div>

    <div class="col-3">
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
    <asp:TextBox ID="txtDataCadastro" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
    </div></div>
    <br />
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-secondary" />
    <asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-secondary" />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField ApplyFormatInEditMode="True" DataField="id" HeaderText="Código" />
            <asp:BoundField DataField="razaosocial" HeaderText="Razão Social" />
            <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
            <asp:BoundField DataField="inscricaoest" HeaderText="IE" />
            <asp:BoundField DataField="telefone" HeaderText="Telefone" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="cep" HeaderText="CEP" />
            <asp:BoundField DataField="logradouro" HeaderText="Logradouro" />
            <asp:BoundField DataField="numero" HeaderText="Número" />
            <asp:BoundField DataField="complemento" HeaderText="Complemento" />
            <asp:BoundField DataField="bairro" HeaderText="Bairro" />
            <asp:BoundField DataField="cidade" HeaderText="Cidade" />
            <asp:BoundField DataField="departamento" HeaderText="Departamento" />
            <asp:BoundField DataField="datacadastro" HeaderText="Data de Cadastro" />
            <asp:ButtonField HeaderText="Alterar" Text="Alterar" />
            <asp:ButtonField HeaderText="Remover" Text="Remover" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>

    </div>

</asp:Content>
