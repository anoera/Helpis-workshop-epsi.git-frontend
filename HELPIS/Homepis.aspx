<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepis.aspx.cs" Inherits="HELPIS.Models.Homepis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>helpis</title>
</head>
<script type="text/javascript">
    function Valider() {
        document.getElementById("divRetour").innerHTML = "";
        document.getElementById("<%=Button1.ClientID%>").disabled = true;
        PageMethods.retour(document.getElementById("tbParam").value.replace("\n", " "), onSuccess);
    }
     
    function onSuccess(result) {
        if (result != "Pas de résultat disponible, désolé") {
            const json = result;
            const obj = JSON.parse(json);

            const slt = obj.result.document_tone.tones;

            if (slt.length < 1) {
                document.getElementById("divRetour").innerHTML += "<div style=\"min-width:200px; max-width:200px;\">" + "Pas de résultat disponible, désolé" + "</div>";

                console.log("R");
            }
            for (let i = 0; i < slt.length; i++) {

                document.getElementById("divRetour").innerHTML += "<div style=\"min-width:200px; max-width:200px;\">" + slt[i].tone_name + " : " + Math.round(slt[i].score * 100) + "%</div>";

                console.log(slt[i].tone_name)
                console.log(slt[i].score)
            }

            /* for (tone in obj.result.document_tone.tones) {
    
                window.alert(tone.score)
                
            }*/

            document.getElementById("<%=Button1.ClientID%>").disabled = false;

        }
        else {
            document.getElementById("divRetour").innerHTML += "<div style=\"min-width:200px; max-width:200px;\">" + "Pas de résultat disponible, désolé" + "</div>";
            document.getElementById("<%=Button1.ClientID%>").disabled = false;
        }
    }


</script>
<body>
    <form id="form1" runat="server" style="text-align:center;">
        <table style="text-align:center; width:100%">
            <tr>
                <td>
                    <img src="../Ressources/logoHelpis.png" height="400" width="400"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox id="tbParam" runat="server" TextMode="MultiLine" Rows="10" Width="400px" Height="200px" placeholder="Entrez le texte à décoder"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" id="Button1" Text="Valider" OnClientClick="Valider(); return false;" Width="400px"/>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true"></asp:ScriptManager>
                </td>
            </tr>
        </table>
        <div id="divRetour" style="text-align:left; display:flex; justify-content:center; margin-top:50px; font-size:25px; font-weight:bold" >
            

        </div>
    </form>
</body>


</html>