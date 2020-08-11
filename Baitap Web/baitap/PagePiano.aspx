<%@ Page Title="" Language="C#" MasterPageFile="~/baitap/MasterPage.master" AutoEventWireup="true" CodeFile="PagePiano.aspx.cs" Inherits="baitap_PagePiano" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="border-bottom:5px solid red; height:30px;">
        
        <asp:Label ID="lbTenDM" BackColor="#00FF00" ForeColor="#FF0000" Height="65px" Font-Size="43px" runat="server" Text='Đàn Piano'></asp:Label>
    </div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <ItemTemplate>
            <br />
             <table class="bangTimTour">
                <tr>
                    <td>
                        <asp:Image Width="150px" Height="150px" ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenDan") %>'></asp:Label>
                    </td>
  
                </tr>
                 <tr>
                     <td>
                         <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success" Font-Underline="false" runat="server" NavigateUrl='<%# "ChiTietSP.aspx?ID=" + Eval("MaDan") %>'>Chi Tiết</asp:HyperLink>
                         <asp:HyperLink ID="HyperLink2" CssClass="btn btn-success" runat="server" NavigateUrl='<%# "GioHang2.aspx?ID=" + Eval("MaDan") %>'>Mua</asp:HyperLink>
                     <td>
                 </tr>
              </table>
        </ItemTemplate>
    </asp:DataList>
   

</asp:Content>

