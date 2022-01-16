<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="bilet_alis_satis.Admin" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>

<body style="background-image:url(web/loginbackg.jpg);background-size: cover;">
	<form id="form1" runat="server">
	<center>
		<div
			style="padding-top: 30px;padding-bottom: 50px;margin-top: 180px ;border-radius: 10px; height: 260px; width: 40%; background-color: white; opacity: 0.8;">
			<p style="color: black;font-size: 28px;margin-right: 300px; margin-top: 20px;"><img src="web/usericon.png"
					style="height: 65px; width: 65px;">Admin Girişi</p>
				<asp:TextBox ID="kullaniciAditxt" runat="server" PlaceHolder="Kullanıcı Adı" style="border-radius: 5px; width: 80%;height: 40px;"></asp:TextBox>
				<br><br>
				<asp:TextBox ID="sifretxt" runat="server" TextMode="Password" PlaceHolder="Şifre" style="border-radius: 5px; width: 80%;height: 40px;"></asp:TextBox>
				<br>
				<asp:Button ID="girisbttn" runat="server" Text="GİRİŞ" style="border-radius: 10px;margin-right: 375px;background-color: #176f98;font-size: 20px;" Width="129px" OnClick="girisbttn_Click" />
				<asp:Label ID="lblmesaj" runat="server" Text="" style="margin-right: 450px; color: red; font-size: 20px;" Width="200px"></asp:Label>
		</div>
	</center>
    </form>
</body>

</html>

