<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Funcionarios.aspx.cs" Inherits="Projeto_Inter.Funcionarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

    <div class="row">
    <div class="col-1">
    <asp:Label ID="Label3" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" Width="80px" CssClass="form-control"></asp:TextBox>
        </div>

    <div class="col-10">
    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo &quot;Nome&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtNome" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
    <br />
        </div></div>


    <fieldset>
        <legend> Dados Pessoais </legend>
    <div class="row">
    <div class="col-3">
    <asp:Label ID="Label5" runat="server" Text="CPF"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorCPF" runat="server" ControlToValidate="txtCPF" ErrorMessage="Campo &quot;CPF&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtCPF" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
        </div>

    <div class="col-4">
    <asp:Label ID="Label6" runat="server" Text="RG"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorRG" runat="server" ControlToValidate="txtRG" ErrorMessage="Campo &quot;RG&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtRG" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
        </div></div>
    </fieldset><br />
    <br />
    
    <fieldset>
        <legend>Endereço</legend>

    <asp:Label ID="Label9" runat="server" Text="CEP"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorCEP" runat="server" ControlToValidate="txtCEP" ErrorMessage="Campo &quot;CEP&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtCEP" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

    <div class="row">
    <div class="col-4">
    <asp:Label ID="Label10" runat="server" Text="Logradouro"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorLagradouro" runat="server" ControlToValidate="txtLogradouro" ErrorMessage="Campo &quot;Lagradouro&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtLogradouro" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
        </div>

    <div class="col-1">
    <asp:Label ID="Label11" runat="server" Text="Número"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorNumero" runat="server" ControlToValidate="txtNumero" ErrorMessage="Campo &quot;Numero&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtNumero" runat="server" Width="65px" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-4">
    <asp:Label ID="Label12" runat="server" Text="Complemento"></asp:Label>
    <asp:TextBox ID="txtComplemento" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div></div>

    <div class="row">
    <div class="col-2">
    <asp:Label ID="Label13" runat="server" Text="Bairro"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorBairro" runat="server" ControlToValidate="txtBairro" ErrorMessage="Campo &quot;Bairro&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtBairro" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div>
    
    <div class="col-2">
    <asp:Label ID="Label14" runat="server" Text="Cidade"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorCidade" runat="server" ControlToValidate="txtCidade" ErrorMessage="Campo &quot;Cidade&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
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
        <asp:RequiredFieldValidator ID="ValidatorTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo &quot;Telefone&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtTelefone" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-2">
    <asp:Label ID="Label17" runat="server" Text="Email"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo &quot;Email&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtEmail" runat="server" Width="400px" CssClass="form-control" placeholder="email@email.com.br"></asp:TextBox>
        </div></div>
    </fieldset>
    
    <br />
    <br />
  
    <div class="row">
    <div class="col-3">
    <asp:Label ID="Label18" runat="server" Text="Cargo"></asp:Label>
        <asp:RequiredFieldValidator ID="Validator" runat="server" ControlToValidate="txtCargo" ErrorMessage="Campo &quot;Cargo&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtCargo" runat="server" Width="200px" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-3">
    <asp:Label ID="Label19" runat="server" Text="Departamento"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorDepartamento" runat="server" ControlToValidate="txtDepartamento" ErrorMessage="Campo &quot;Departamento&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDepartamento" runat="server" Width="250px" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-3">
    <asp:Label ID="Label20" runat="server" Text="Data Cadastro"></asp:Label>
        <asp:RequiredFieldValidator ID="ValidatorDataCadastro" runat="server" ControlToValidate="txtDataCadastro" ErrorMessage="Campo &quot;Data Cadastro&quot; não informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDataCadastro" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
    </div></div>
    <br />
    <br />

    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-secondary" />
    <asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-secondary" />
    <asp:Button ID="btnAlterar" runat="server" Text="Alterar" CssClass="btn btn-secondary" />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-secondary" />
</div>
</asp:Content>
