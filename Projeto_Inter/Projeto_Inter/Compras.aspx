﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Projeto_Inter.Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Nº Cotação"></asp:Label>
    <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" placeholder="Entre com o número da cotação:" Width="176px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Data da Cotação"></asp:Label>
    <asp:TextBox ID="txtDataCot" runat="server" CssClass="form-control" placeholder="Entre com a data cotação:"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Funcionário Solicitante"></asp:Label>
    <asp:TextBox ID="txtFuncSolicit" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="Departamento"></asp:Label>
    <asp:TextBox ID="txtDepartamento" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Funcionário Aprovador"></asp:Label>
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
    <asp:CheckBox ID="cbBoleto" runat="server" Text="Boleto" />
    </fieldset>

    <br />
    <br />

    <button type="button" class="btn btn-secondary"> Confirmar compra</button>

</asp:Content>
