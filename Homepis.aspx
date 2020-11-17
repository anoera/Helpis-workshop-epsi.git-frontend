<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepis.aspx.cs" Inherits="HELPIS.Models.Homepis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script type="text/javascript">
    function Valider() {
        PageMethods.retour(document.getElementById("tbParam").value, onSuccess);
    }
     
    function onSuccess(result) {
        const json = result;
        const obj = JSON.parse(json);

        for (let i = 0; i < obj.result.document_tone.tones.length; i++) {
            console.log(obj.result.document_tone.tones[i].tone_name)
        }


        /* for (tone in obj.result.document_tone.tones) {

            window.alert(tone.score)
            
        }*/

    }


</script>
<body>
    <form id="form1" runat="server">
        <div>
            <div>HELPIS</div>
            <asp:TextBox id="tbParam" runat="server"></asp:TextBox>
            <asp:Button runat="server" id="btnValider" Text="Valider" OnClientClick="Valider(); return false;"/>
            <asp:ScriptManager ID="smPageMethods" runat="server" EnablePageMethods="true" EnablePartialRendering="true"></asp:ScriptManager>
        </div>
        <div runat="server" id="divRetour">
            Retour
        </div>
    </form>
</body>
</html>
