<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Requisicao.aspx.cs" Inherits="Projeto_Inter.Requisicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Nº Requisição"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Data da Requisição"></asp:Label>
    <asp:TextBox ID="txtDataReq" runat="server"></asp:TextBox>
    <br />
    <br />
    <fieldset>
        <legend> Itens </legend>
    <asp:Label ID="Label6" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="Buscar" OnClick="Button2_Click" />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Descrição"></asp:Label>
    <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Quantidade"></asp:Label>
    <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
    <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" OnClick="btnAdicionar_Click" />
        <br />
    <br />
    <asp:GridView ID="gridReq" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="606px">
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

    <asp:Label ID="Label9" runat="server" Text="Justificativa da Requisição e Urgência"></asp:Label>
    <br />
    <asp:TextBox ID="txtJustificativa" runat="server" Height="131px" Width="596px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="btnSalvarReq" runat="server" Text="Salvar Requisição" OnClick="btnSalvarReq_Click" />
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" Text="Status da Requisição"></asp:Label>
    <asp:TextBox ID="txtStatus" runat="server" ReadOnly="True" Height="16px"></asp:TextBox>
</asp:Content>
