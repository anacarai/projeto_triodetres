<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CadastroProduto.aspx.cs" Inherits="Projeto_Inter.CadastroProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
    
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
    <br />
    <br />
    <div class="row">
    <div class="col-1">
    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" Width="80px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
    </div>
    <div class="col-10">
    <asp:Label ID="Label4" runat="server" Text="Descrição do Produto"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorNome" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Campo &quot;Descrição do Produto&quot; não informado!" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDescricao" runat="server" Width="533px" CssClass="form-control"></asp:TextBox>
    </div></div>
    <br />
    <br />
        
    <div class="row">
    <div class="col-4">
    <asp:Label ID="Label5" runat="server" Text="Marca"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorMarca" runat="server" ControlToValidate="txtMarca" ErrorMessage="Campo &quot;Marca&quot; não informado!" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtMarca" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-2">
    <asp:Label ID="Label6" runat="server" Text="Unidade de Medida"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorUnidadeMedida" runat="server" ControlToValidate="txtUnMedida" ErrorMessage="Campo &quot;Unidade de Medida&quot; não informado!" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtUnMedida" runat="server" Width="176px" CssClass="form-control"></asp:TextBox>
    <br />
    </div></div>

    <br />
    <div class="row">
    <div class="col-4">
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorDepartamento" runat="server" ControlToValidate="txtDepartamento" ErrorMessage="Campo &quot;Departamento&quot; não informado!" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
    </div>
    
    <div class="col-2">
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorDataCadastro" runat="server" ControlToValidate="txtDataCadastro" ErrorMessage="Campo &quot;Data Cadastro&quot; não informado!" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDataCadastro" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div></div>
        
        <br />
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-secondary" ValidationGroup="validacao" />
    <asp:Button ID="btnNovo" runat="server" OnClick="btnNovo_Click" Text="Novo" CssClass="btn btn-secondary" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField ApplyFormatInEditMode="True" DataField="id" HeaderText="Código" />
            <asp:BoundField DataField="descricao" HeaderText="Descrição" />
            <asp:BoundField DataField="marcaitem" HeaderText="Marca" />
            <asp:BoundField DataField="unidademedida" HeaderText="UN" />
            <asp:BoundField DataField="departamento" HeaderText="Departamento" />
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
    <br />
        </div>
</asp:Content>
