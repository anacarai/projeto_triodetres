<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Projeto_Inter.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-5">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
    <asp:Label ID="NumCotacao" runat="server" Text="Nº Cotação"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorCotacao" runat="server" ControlToValidate="txtNumero" ErrorMessage="O campo &quot;Nº cotação&quot; não foi informado " ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" placeholder="Entre com o número da cotação:" Width="176px"></asp:TextBox>
    </div>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-secondary" OnClick="btnSalvar_Click" ValidationGroup="validacao" />
    </div><br />
    <br />

    <asp:GridView ID="gridCotacoes" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="693px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="idrequisicao" HeaderText="Nº Requisição" />
            <asp:BoundField DataField="datarequisicao" HeaderText="Data" />
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
    <br />
    <div class="row">
        <div class="col-2">
    <asp:Label ID="Label4" runat="server" Text="Data da Cotação"></asp:Label>
    <asp:RequiredFieldValidator ID="ValidatorDataCotacao" runat="server" ControlToValidate="txtDataCot" ErrorMessage="O campo &quot;Data da cotação&quot; não foi informado" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDataCot" runat="server" CssClass="form-control" placeholder="Entre com a data cotação:"></asp:TextBox>
    <br />
    </div>
        <div class="col-4">
    <asp:Label ID="Label6" runat="server" Text="Funcionário Solicitante"></asp:Label>
    <asp:TextBox ID="txtFuncSolicit" runat="server" ReadOnly="True" CssClass="form-control" OnTextChanged="txtFuncSolicit_TextChanged"></asp:TextBox>
    </div>
        <div class="col-4">
    <asp:Label ID="Label7" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Funcionário Aprovador"></asp:Label>
            </div></div>
    <asp:TextBox ID="txtFuncAprov" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
    <br />

    <div class="form-group">
    <label for="exampleFormControlSelect1">Prazo</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>30 dias </option>
      <option>30/45 dias</option>
      <option>30/45/60 dias</option>
    </select>
  </div>

    <br />
    <br />
    <asp:CheckBox ID="cbDinheiro" runat="server" Text="Dinheiro" />
    <asp:CheckBox ID="cbCheque" runat="server" Text="Cheque" />
    <asp:CheckBox ID="cbDeposito" runat="server" Text="Depósito" />
    </fieldset>

    <asp:CheckBox ID="cbBoleto" runat="server" Text="Boleto" />

    <br />
    <br />

    <button type="button" class="btn btn-secondary"> Confirmar compra</button>

</asp:Content>
