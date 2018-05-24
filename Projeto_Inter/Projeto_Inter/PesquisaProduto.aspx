<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PesquisaProduto.aspx.cs" Inherits="Projeto_Inter.PesquisaProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label4" runat="server" Text="Pesquisar"></asp:Label>
    <asp:TextBox ID="txtPesquisar" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar"  CssClass="btn btn-secondary" OnClick="btnBuscar_Click" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Lista de Materiais"></asp:Label>
    <hr />
    <asp:GridView ID="gridMateriais" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" Height="187px" Width="764px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
</asp:Content>
