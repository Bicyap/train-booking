<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rezervasyonlar.aspx.cs" Inherits="bilet_alis_satis.rezervasyonlar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url(web/welcomebackground.jpg);background-size: cover;">
    <form id="form1" runat="server">
        <center>
		<div
			style="padding-top: 30px;padding-bottom: 50px;margin-top: 180px ;border-radius: 10px; height: 260px; width: 40%; background-color: white; opacity: 0.8;">
			<p style="color: black;font-size: 28px;margin-right: 300px; margin-top: 20px;">Rezervasyon Sorgulama</p>
				<asp:TextBox ID="reznogirtxt" runat="server" PlaceHolder="Rezervasyon Numaranızı Giriniz" style="border-radius: 5px; width: 80%;height: 40px;"></asp:TextBox>
				<br><br>
				<asp:Button ID="sorgubttn" runat="server" Text="SORGULA" style="border-radius: 10px;margin-right: 375px;background-color: #176f98;font-size: 20px;" Width="129px" OnClick="sorgubttn_Click" />
				<br /><br /><br />
		    <asp:Label ID="Label1" runat="server" Text="Tarih:  "></asp:Label>
				
		    <asp:Label ID="tarihlbl" runat="server"></asp:Label>
			<br />
			 <asp:Label ID="Label3" runat="server" Text="Nereden:  "></asp:Label>
				
		    <asp:Label ID="neredenlbl" runat="server"></asp:Label>
			<br />
			 <asp:Label ID="Label5" runat="server" Text="Nereye:  "></asp:Label>
				
		    <asp:Label ID="nereyelbl" runat="server"></asp:Label>
			<br />
			<asp:Label ID="Label7" runat="server" Text="Kişi Sayısı:  "></asp:Label>
				
		    <asp:Label ID="kisilbl" runat="server"></asp:Label>
			<br />
				
		</div>
	</center>
        
    </form>
</body>
</html>
