<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newAccount.aspx.cs" Inherits="bilet_alis_satis.newAccount" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body style="background-image:url(web/loginbackg.jpg);background-size: cover;">
	<form id="form1" runat="server">
	<center><div style="padding-top: 30px;padding-bottom: 50px;margin-top: 140px ;border-radius: 10px; height: 550px; width: 35%; background-color: white; opacity: 0.9;">
		<div style="margin-top: -15px;width: 100%;height: 15px;background-color: white;opacity: 1;border: 2px;border-color: black;"><strong><p style="text-align: center;font-size: 20px;color: blue;background-color: white;opacity: 1.0;">Kullanıcı Bilgilerini Girin</p></strong></div>

			<p style="margin-top: 35px;margin-left: -5px;margin-right: 402px;font-size: 15px;color: black;">Mail Adresi</p>
			<asp:TextBox ID="mailtxt" runat="server" PlaceHolder="abc@example.com" style="width: 80%;height: 30px;margin-left: 10px;margin-top: 2px;border-radius: 3px;"></asp:TextBox>

			<p style="color: black;font-size: 15px;margin-top: 20px;margin-right: 450px;">Ad</p>
			<asp:TextBox ID="isimtxt" runat="server" PlaceHolder="Adınız" style="border-radius: 3px;width: 35%;height: 30px;background-color: white;margin-right: 233px;margin-top: 2px;color: black;"></asp:TextBox>

			<p style="color: black;font-size: 15px;margin-top: -72px;margin-left: 80px;">Soyad</p>
			<asp:TextBox ID="soyadtxt" runat="server" PlaceHolder="Soyadınız" style="border-radius: 3px;width: 35%;height: 30px;background-color: white;margin-left: 250px;margin-top: 2px;color: black;"></asp:TextBox>

			<p style="margin-top: 35px;margin-left: -5px;margin-right: 402px;font-size: 15px;color: black;">Kullanıcı Adınız</p>
			<asp:TextBox ID="kullaniciaditxt" runat="server" PlaceHolder="Kullanıcı Adı" style="width: 80%;height: 30px;margin-left: 10px;margin-top: 2px;border-radius: 3px;"></asp:TextBox>

			<p style="margin-top: 20px;margin-left: -5px;margin-right: 402px;font-size: 15px;color: black;">Şifre Belirleyin</p>
			<asp:TextBox ID="sifretxt" runat="server" PlaceHolder="Şifre" TextMode="Password" style="width: 80%;height: 30px;margin-left: 10px;margin-top: 2px;border-radius: 3px;"></asp:TextBox>

			<p style="margin-top: 20px;margin-left: -5px;margin-right: 390px;font-size: 15px;color: black;">Şifrenizi Onaylayın</p>
			<asp:TextBox ID="sifreonaytxt" runat="server" PlaceHolder="Şifre Tekrar" TextMode="Password" style="width: 80%;height: 30px;margin-left: 10px;margin-top: 2px;border-radius: 3px;"></asp:TextBox>

			<center><asp:Button ID="hesapOlstrbttn" runat="server" Text="KAYIT OL" style="border-radius: 5px;width: 40%;height: 40px;background-color: orange;opacity: 0.8;font-size: 20px; margin-top: 25px;color: black;" OnClick="hesapOlstrbttn_Click" />
				<br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
        </center>
	</div></center>
    </form>
</body>
</html>
