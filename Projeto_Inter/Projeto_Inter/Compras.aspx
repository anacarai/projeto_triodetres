<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Projeto_Inter.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Nº Cotação"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Data da Cotação"></asp:Label>
    <asp:TextBox ID="txtDataCot" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Funcionário Solicitante"></asp:Label>
    <asp:TextBox ID="txtFuncSolicit" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Funcionário Aprovador"></asp:Label>
    <asp:TextBox ID="txtFuncAprov" runat="server" OnTextChanged="txtFuncAprov_TextChanged" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <br />
    <fieldset>
        <legend> Pagamento </legend>

    <asp:Label ID="Label10" runat="server" Text="Prazo"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="1">A VISTA</asp:ListItem>
        <asp:ListItem Value="2">30 DIAS</asp:ListItem>
        <asp:ListItem Value="3">30/45 DIAS</asp:ListItem>
        <asp:ListItem Value="4">30/45/60 DIAS</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:CheckBox ID="cbDinheiro" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Dinheiro" />
    <asp:CheckBox ID="cbCheque" runat="server" Text="Cheque" />
    <asp:CheckBox ID="cbDeposito" runat="server" Text="Depósito" />
    <asp:CheckBox ID="cbBoleto" runat="server" Text="Boleto" />
    </fieldset>

    <br />
    <br />

    <asp:Button ID="btnConfirmaCompra" runat="server" Text="Confirmar Compra" />
</asp:Content>
