<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimkiemSV.aspx.cs" Inherits="thuchanh8_9.TimkiemSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 542px;
        }
        .auto-style3 {
            margin-left: 10px;
        }
        .auto-style4 {
            width: 162px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 116px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
                <tr>
                    <td class="auto-style6">Tìm Theo:</td>
                    <td>
            <asp:DropDownList ID="ddlType" runat="server" CssClass="auto-style5">
                <asp:ListItem Value="1">Mã sinh viên</asp:ListItem>
                <asp:ListItem Value="2">Họ tên</asp:ListItem>
            </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                    <td class="auto-style6">Nội dung tìm:</td>
                    <td>
            <asp:TextBox ID="txtTim" runat="server" Width="176px"></asp:TextBox>
            <asp:Button ID="btnTim" runat="server" OnClick="btnTim_Click" Text="Tìm" CssClass="auto-style3" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2" style="text-align:center">
                        <br />
                        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" Width="575px" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSV" HeaderText="Mã SV" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" />
                <asp:BoundField DataField="TenKhoa" HeaderText="Tên khoa" />
                <asp:ButtonField ButtonType="Button" CommandName="btnChiTiet" HeaderText="Chi Tiết" Text="Chi Tiết" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                        <br />
                        <br />
                        <br />

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="342px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TenMon" HeaderText="Tên Môn" HtmlEncode="False" />
                <asp:BoundField DataField="NamHK" HeaderText="Năm Đăng ký" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                        <br />
                 </td>
              </tr>
         </table>
    </form>
</body>
</html>
