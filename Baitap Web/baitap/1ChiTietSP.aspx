<%@ Page Title="" Language="C#" MasterPageFile="~/baitap/MasterPage.master" AutoEventWireup="true" CodeFile="1ChiTietSP.aspx.cs" Inherits="baitap_1ChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
                <div style="border-bottom:5px solid red; height:46px;">
                    <asp:Label ID="Label1" BackColor="#00FF00" ForeColor="#FF0000" Height="30px" Font-Size="20px"  runat="server" Text='<%# Eval("TenLoai") %>'></asp:Label>
                </div>
              <table class="ctTimTour">
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="200px" Width="200px" />
                    </td>
  
                </tr>
                 <tr>
                     <td></td>
                     <td>
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenDan") %>'></asp:Label>
                     <td>
                 </tr>  
                  <tr>
                      <td></td>
                      <td>
                         Mô tả sản phẩm: <asp:Label ID="Label9" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td></td>
                      <td style="color:red;">
                          Giá: <asp:Label ID="Label8" runat="server" Text='<%# Eval("Gia") + " VNĐ" %>'></asp:Label>
                      </td>
                  </tr>
              </table>

        </ItemTemplate>
    </asp:DataList>
</asp:Content>

