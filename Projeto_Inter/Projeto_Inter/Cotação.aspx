<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Cotação.aspx.cs" Inherits="Projeto_Inter.Cotação" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Nº Requisição"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Data da Requisição"></asp:Label>
    <asp:TextBox ID="txtDataReq" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Funcionário Solicitante"></asp:Label>
    <asp:TextBox ID="txtFuncSolicit" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <fieldset>
        <legend> Itens Solicitados </legend>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="693px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="descricao" HeaderText="Descrição" ReadOnly="True" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="quantidade" HeaderText="Quantidade" ReadOnly="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </fieldset>
    <br />
    <br />
    <fieldset>
        <legend> Cotações </legend>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="693px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="Fornecedor" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="descricao" HeaderText="Descrição" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="quantidade" HeaderText="Quantidade" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="valor" HeaderText="Valor Total" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </fieldset>
    <br />
    <br />
    <asp:Button ID="btnEnviarCotacao" runat="server" OnClick="Button2_Click" Text="Enviar Cotação" />
    <asp:Button ID="btnAprovar" runat="server" Text="Aprovar" />
</asp:Content>
