<%@ Page Title="" Language="C#" MasterPageFile="~/baitap/MasterPage.master" AutoEventWireup="true" CodeFile="PageSignUp.aspx.cs" Inherits="PageSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style1 {
            width: 153px;
        }
        .auto-style2 {
            width: 153px;
            height: 31px;
        }
        .auto-style3 {
            height: 31px;
        }
        
        .auto-style4 {
            width: 326px;
        }
        .auto-style5 {
            width: 326px;
            height: 31px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="height:auto;">
        <h2>Đăng Kí Thông Tin</h2>
        <br />
        <table style="width:90%;">
            <tr>
                <td class="auto-style4">Họ tên</td>
                <td>
                    <asp:TextBox ID="hoten" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Số điện thoại</td>
                <td>
                    <asp:TextBox ID="dthoai" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Giới tính</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="300px">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Địa chỉ Email</td>
                <td>
                    <asp:TextBox ID="email" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mật khẩu</td>
                <td>
                    <asp:TextBox ID="password" TextMode="Password" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nhập lại mật khẩu</td>
                <td>
                    <asp:TextBox ID="repassword" TextMode="Password" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td>
                    <asp:Button ID="dky" runat="server" Text="Đăng ký" BackColor="Orange" BorderColor="#ff9900" OnClick="dky_Click" />
                &nbsp;<asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>

