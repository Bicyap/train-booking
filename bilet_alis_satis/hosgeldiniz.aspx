<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hosgeldiniz.aspx.cs" Inherits="bilet_alis_satis.hosgeldiniz" %>

<!DOCTYPE html>
<html>
<head>
	
	<title></title>
</head>
<body style="background-image:url(web/welcomebackground.jpg);background-size: cover;">
    <form id="form1" runat="server">
   	    <p style="color: black; padding-top: 100px;font-size: 30px;text-align: center;">BICYAP HİZMETLERE HOŞGELDİNİZ</p>
   	    <center><asp:Button ID="girisbttn" runat="server" Text="GİRİŞ YAP" style="font-size: 24px;text-align: center;color: blue;position: static;" OnClick="girisbttn_Click" /></center><br><br><br>
   	    <center><asp:Button ID="uyebttn" runat="server" Text="ÜYE OL" style="font-size: 24px;text-align: center;color: blue;position: static;" OnClick="uyebttn_Click" /></center><br><br><br>
    </form>
</body>
</html>

