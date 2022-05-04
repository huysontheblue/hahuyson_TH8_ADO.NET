<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timkiem_sua_xoaSV.aspx.cs" Inherits="thuchanh8_9.Timkiem_sua_xoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 188px;
        }
        .auto-style2 {
            width: 556px;
        }
        .auto-style3 {
            width: 370px;
        }
        .auto-style4 {
            width: 933px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        TÌM - SỬA-XÓA SINH VIÊN
        <table class="auto-style4"> 
            <tr>
                <td class="auto-style1">Khoa đào tạo:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="cboKhoadaotao" runat="server" OnSelectedIndexChanged="cboKhoadaotao_SelectedIndexChanged1"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Lớp: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLopBC" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mã sinh viên: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMaSV" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Họ tên: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtHoTen" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ngày sinh: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNgaySinh" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Địa chỉ: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDiaChi" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style3">
                    <asp:Button ID="btnGhi" runat="server" Text="Cập nhật" Width="81px" OnClick="btnGhi_Click" />
                </td>

            </tr>
            <br />
            <br />
            <tr style="text-align:center">
                <td colspan="2" class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="733px" CellPadding="4" ForeColor="#333333" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="MaKhoa" HeaderText="Mã Khoa" HtmlEncode="False" />
                            <asp:BoundField DataField="LopBC" HeaderText="Lớp BC" HtmlEncode="False" />
                            <asp:BoundField DataField="MaSV" HeaderText="Mã SV" HtmlEncode="False" />
                            <asp:BoundField DataField="HoTen" HeaderText="Họ và tên" HtmlEncode="False" />
                            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" HtmlEncode="False" />
                            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" HtmlEncode="False" />
                            <asp:ButtonField ButtonType="Button" HeaderText="Sửa" Text="Sửa" CommandName="btnSua" />
                            <asp:ButtonField ButtonType="Button" HeaderText="Xóa" Text="Xóa" CommandName="btnXoa" />
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
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
