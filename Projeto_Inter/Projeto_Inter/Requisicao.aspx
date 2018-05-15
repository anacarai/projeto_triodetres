<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Requisicao.aspx.cs" Inherits="Projeto_Inter.Requisicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
    <div class="row">
        <div class="col-2">
            <asp:Label ID="Label3" runat="server" Text="Nº Requisição"></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
        <div class="col-6">
            <asp:Label ID="Label4" runat="server" Text="Data da Requisição"></asp:Label>
            <asp:TextBox ID="txtDataReq" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
     </div>

    <br />

    <fieldset>
        <legend> Itens </legend>
        <div class="row">
        <div class="col-2">
    <asp:Label ID="Label6" runat="server" Text="Código"></asp:Label>
    <asp:TextBox ID="txtCodigo" runat="server"  CssClass="form-control"></asp:TextBox>    
            <br />
    <asp:Button ID="Button2" runat="server" Text="Buscar" OnClick="Button2_Click" CssClass="btn btn-secondary" />
</div> </div>
        <br />
              
    <div class="row">
    <div class="col-2">
    <asp:Label ID="Label7" runat="server" Text="Descrição"></asp:Label>
    <asp:TextBox ID="txtDescricao" runat="server"  CssClass="form-control"></asp:TextBox>
    </div>
        <div class="col-2">
    <asp:Label ID="Label8" runat="server" Text="Quantidade"></asp:Label>
    <asp:TextBox ID="txtQuantidade" runat="server"  CssClass="form-control"></asp:TextBox>
    </div></div>
        <br />
    <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" OnClick="btnAdicionar_Click" CssClass="btn btn-secondary" />

    </fieldset>             
 
    <br />
        <div class="row">
            <div class="col-6">
    <asp:GridView ID="gridReq" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="606px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
    </div>
    <br />
    
    <div class="col-6">
    <asp:Label ID="Label9" runat="server" Text="Justificativa da Requisição e Urgência"></asp:Label>
    <br />
    <asp:TextBox ID="txtJustificativa" runat="server" Height="131px" Width="596px" TextMode="MultiLine"  CssClass="form-control"></asp:TextBox>
    </div></div>
        
        <br />
        <br />
    <div class="row">
    <div class="col-6">
    <asp:Button ID="btnSalvarReq" runat="server" Text="Salvar Requisição" OnClick="btnSalvarReq_Click" CssClass="btn btn-secondary" />
    <br />
    <br />
    </div>
    
    <div class="col-6">
    <asp:Label ID="Label10" runat="server" Text="Status da Requisição"></asp:Label>
    <asp:TextBox ID="txtStatus" runat="server" ReadOnly="True"  CssClass="form-control"></asp:TextBox>
    </div></div>

</asp:Content>
