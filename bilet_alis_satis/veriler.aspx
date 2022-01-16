<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="veriler.aspx.cs" Inherits="bilet_alis_satis.veriler" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Paneli</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>

    <form runat="server">
        <div style="margin-top: 15px">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>KULLANICI ADI</th>
                    <th>ŞİFRE</th>
                    <th>AD</th>
                    <th>SOYAD</th>
                    <th>MAIL</th>
                    <th>SİL</th>
                    <th>GÜNCELLE</th>
                </tr>
                <asp:Repeater ID="myRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("KULLANICI") %></td>
                            <td><%# Eval("SIFRE") %></td>
                            <td><%# Eval("AD") %></td>
                            <td><%# Eval("SOYAD") %></td>
                            <td><%# Eval("MAIL") %></td>
                            <td><asp:HyperLink NavigateUrl='<%# "deletePage.aspx?ID="+Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                            <td><asp:HyperLink NavigateUrl='<%# "updatePage.aspx?ID="+Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>

</body>
</html>


