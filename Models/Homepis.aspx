<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepis.aspx.cs" Inherits="HELPIS.Models.Homepis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>HELPIS</div>
            <asp:TextBox id="tbParam" runat="server"></asp:TextBox>
            <asp:Button runat="server" id="btnValider" Text="Valider" OnClick="btnValider_Click"/>
        </div>
        <div runat="server" id="divRetour">
            Retour
        </div>
    </form>
</body>
</html>
