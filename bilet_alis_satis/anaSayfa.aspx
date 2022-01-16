<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anaSayfa.aspx.cs" Inherits="bilet_alis_satis.anaSayfa" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		*{
			margin:0;
			padding: 0;
		}
		a:link {
			text-decoration: none;
		}
	    .auto-style1 {
            margin-bottom: 0;
        }
	</style>
</head>
<body style="background-image:url(web/homepage.jpg);background-size: cover;padding: 0;">
	<form id="form1" runat="server">
	<div style="background-color: black; opacity: 0.7; padding-top: 20px;padding-bottom: 20px;margin-top: 15px;width: 100%;height: 40px;">
		<p style="color: white;font-size: 20px; margin-left: 30px;margin-top: 10px;">BICYAP BILET HIZMETLERI A.S.

	</div>
	<div style="background-color: white;opacity: 0.7;padding-top: 10px;padding-bottom: 10px;margin-top: 5px;width: 100%;height: 25px;">
		<p><asp:LinkButton ID="anaSayfabttn" runat="server" Text="Ana Sayfa" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="anaSayfabttn_Click" />
		<asp:LinkButton ID="rezbttn" runat="server" Text="Rezervasyonlarınız" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="rezbttn_Click" />
		<asp:LinkButton ID="contactbttn" runat="server" Text="İletişim" style="color: black;margin-left: 30px;margin-top: 9px;font-size: 18px;" OnClick="contactbttn_Click" /></p>
	</div>
	<p style="font-size: 80px;font-family: arial;color: white;opacity: 0.7;margin-top: 180px;margin-left: 100px;">SEYAHAT İÇİN<br>EN İYİ YOLU SEÇİN</p>
	<div style="background-color: black;margin-bottom: 100px; opacity: 0.7; padding-top: 40px;padding-bottom: 20px;margin-top: -200px;margin-left: 850px;width: 35%;height: 500px;">
		<p style="color: white;opacity: 0.9;font-size: 25px;margin-top: -20px;margin-left: 15px;">Rota</p>
		<asp:DropDownList ID="neredenList" runat="server" style="border-radius: 5px;width: 40%;height: 40px;background-color: white;opacity: 0.8;font-size: 20px; margin-left: 15px;margin-top: 5px;color: black;">
            <asp:ListItem disabled="disabled" Selected="True">Nereden</asp:ListItem>
            <asp:ListItem>Adana</asp:ListItem>
            <asp:ListItem>Ankara</asp:ListItem>
            <asp:ListItem>Antalya</asp:ListItem>
            <asp:ListItem>İstanbul</asp:ListItem>
            <asp:ListItem>İzmir</asp:ListItem>
            <asp:ListItem>Mersin</asp:ListItem>
        </asp:DropDownList>

		<asp:DropDownList ID="nereyeList" runat="server" style="border-radius: 5px;width: 40%;height: 40px;background-color: white;opacity: 0.8;font-size: 20px; margin-left: 15px;margin-top: 5px;color: black;">
            <asp:ListItem disabled="disabled" Selected="True">Nereye</asp:ListItem>
            <asp:ListItem>Adana</asp:ListItem>
            <asp:ListItem>Ankara</asp:ListItem>
            <asp:ListItem>Antalya</asp:ListItem>
            <asp:ListItem>İstanbul</asp:ListItem>
            <asp:ListItem>İzmir</asp:ListItem>
            <asp:ListItem>Mersin</asp:ListItem>
        </asp:DropDownList>

		<p style="color: white;opacity: 0.9;font-size: 25px;margin-top: 15px;margin-left: 15px;">Yolculuk Tarihi</p>

		<asp:Calendar ID="date" runat="server" style="border-radius: 5px;width: 40%;height: 40px;background-color: white;opacity: 0.8;font-size: 20px; margin-left: 15px;margin-top: 5px;color: black;" OnSelectionChanged="date_SelectionChanged"></asp:Calendar>

		<p style="color: white;opacity: 0.9;font-size: 25px;margin-top: 15px;margin-left: 15px;">Yolcu Sayısı</p>
		<asp:DropDownList ID="yolcuList" runat="server" style="border-radius: 5px;width: 40%;height: 40px;background-color: white;opacity: 0.8;font-size: 20px; margin-left: 15px;margin-top: 5px;color: black;">
            <asp:ListItem disabled="disabled" Selected="True">Kişi Sayısı</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
        </asp:DropDownList>
		<br />
		<br />

		<asp:Label ID="Label1" runat="server" Text="Boş Koltuk Sayısı:" ForeColor="White" style="margin-left: 15px"></asp:Label>

		<asp:Label ID="Label2" runat="server" ForeColor="White" style="margin-left: 15px"></asp:Label>
		<br />
		<asp:Label ID="Label3" runat="server" ForeColor="White" style="margin-left: 15px"></asp:Label>


		<center><asp:Button ID="biletArabttn" runat="server" Text="Rezervasyon Yap" style="border-radius: 5px;width: 40%;height: 40px;background-color: orange;opacity: 0.8;font-size: 20px; margin-top: 25px;color: black;" OnClick="biletArabttn_Click" /></center>
	</div>
    </form>
</body>
</html>


