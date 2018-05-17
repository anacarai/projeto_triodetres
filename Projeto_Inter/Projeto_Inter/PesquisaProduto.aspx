<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PesquisaProduto.aspx.cs" Inherits="Projeto_Inter.PesquisaProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label4" runat="server" Text="Pesquisar"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar"  CssClass="btn btn-secondary" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Lista de Materiais"></asp:Label>
    <hr />
    <asp:GridView ID="gridMateriais" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="187px" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AllowPaging="True" OnPageIndexChanging="gridMateriais_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField ApplyFormatInEditMode="True" DataField="id" HeaderText="Código" ReadOnly="True" />
            <asp:BoundField DataField="descricao" HeaderText="Descrição" ReadOnly="True" />
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
</asp:Content>
