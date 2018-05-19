<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Cotação.aspx.cs" Inherits="Projeto_Inter.Cotação" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-2">
    <asp:Label ID="Label3" runat="server" Text="Nº Requisição"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
             </div>
    <div class="col-2">
    <asp:Label ID="Label4" runat="server" Text="Data da Requisição"></asp:Label>
    <asp:TextBox ID="txtDataReq" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
        </div></div>
        <br />
                
        <div class="row">
            <div class="col-4">
    <asp:Label ID="Label6" runat="server" Text="Funcionário Solicitante"></asp:Label>
    <asp:TextBox ID="txtFuncSolicit" runat="server" ReadOnly="True" Width="400px" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-4">
    <asp:Label ID="Label7" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                </div></div>
    <br />
    <br />
    <fieldset>
        <legend> Itens Solicitados </legend>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="693px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="descricao" HeaderText="Descrição" ReadOnly="True" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="quantidade" HeaderText="Quantidade" ReadOnly="True" />
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
        </fieldset>
    <br />
    <br />
    <fieldset>
        <legend> Cotações </legend>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="693px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="Fornecedor" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="descricao" HeaderText="Descrição" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="quantidade" HeaderText="Quantidade" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="valor" HeaderText="Valor Total" />
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
        </fieldset>
    <br />
    <br />
    <asp:Button ID="btnEnviarCotacao" runat="server" OnClick="Button2_Click" Text="Enviar Cotação" CssClass="btn btn-secondary" />
    <asp:Button ID="btnAprovar" runat="server" Text="Aprovar" CssClass="btn btn-secondary" />
</div>
</asp:Content>
