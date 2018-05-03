<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoasVindas.aspx.cs" Inherits="Projeto_Inter.BoasVindas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Boas Vindas</title>
        <link rel="stylesheet" href="Styles/Style_BoasVindas.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="Usuário Logado: "></asp:Label>
     <asp:Label ID="lblUsuarioLogado" runat="server" Text="user"></asp:Label>
&nbsp;-
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
    </div>
    </form>

    <form id="mensagem" runat="server">

        <asp:Label ID="Label2" runat="server" Text="Bem vindo ao Software da Prefeitura Municipal de Palmares Paulista"></asp:Label>
        <br />
        <br />

            <img src="imagens/logo_pref.png" style="width: 100px; height: auto; position: initial;" aria-orientation="horizontal" border="2" />
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Height="83px" Text="Acessar" Width="169px" OnClick="Button1_Click" />

        <br />

        <br />
        
        <img src="imagens/Logo_Preto.png" style="width: 274px; height: 155px; position: initial;" aria-orientation="horizontal"; />
    
    </form>
</body>
</html>
