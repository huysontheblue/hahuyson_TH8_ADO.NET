<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nhap_sua_xoaKhoaDaoTao.aspx.cs" Inherits="thuchanh8_9.Nhap_sua_xoaKhoaDaoTao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 146px;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            margin-left: 30px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Nhập sửa xóa khoa đào tạo</h3>
            <table >
                <tr>
                    <td class="auto-style1">Mã khoa:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMaKhoa" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Tên khoa :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTenKhoa" runat="server" CssClass="auto-style4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Điện thoại :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm mới" />
                        <asp:Button ID="btnGhi" runat="server" CssClass="auto-style3" OnClick="btnGhi_Click" Text="Ghi" />
                       </td>
                </tr>
            
            <tr style="text-align:center">
                <td colspan="2" class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKhoa" Width="522px" OnRowCommand="GridView1_RowCommand1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" ReadOnly="True" SortExpression="MaKhoa" HtmlEncode="False" />
                    <asp:BoundField DataField="TenKhoa" HeaderText="TenKhoa" SortExpression="TenKhoa" HtmlEncode="False" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" HtmlEncode="False" />
                    <asp:ButtonField ButtonType="Button" CommandName="btnSua" HeaderText="Sửa" ShowHeader="True" Text="sửa" />
                    <asp:ButtonField ButtonType="Button" CommandName="btnXoa" HeaderText="Xóa" ShowHeader="True" Text="xóa" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:th9ConnectionString %>" SelectCommand="SELECT * FROM [KhoaDaoTao]"></asp:SqlDataSource>

                 </td>
            </tr>
        </table>
    </form>
    </body>
</html>
