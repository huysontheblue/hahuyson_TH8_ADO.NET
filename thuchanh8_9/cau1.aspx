<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cau1.aspx.cs" Inherits="thuchanh8_9.cau1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 409px;
        }
        .auto-style2 {
            width: 99px;
        }
        .auto-style3 {
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đăng Nhập</p>
            <table>
                <tr>
                    <td class="auto-style2">Tài khoản:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="t1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật khẩu</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="t2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnNhap" runat="server" Text="Đăng nhập" Width="117px" OnClick="btnNhap_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
