<%@ Page Title="" Language="C#" MasterPageFile="~/baitap/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="baitap_js_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="text-align:center; color: black">THÊM SẢN PHẨM</h1>
    <table style="margin-left: 450px">
         <tr>
             <td>Tên sản phẩm</td>
             <td>
                 <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>

             </td>
         </tr>
        <tr>
            <td>Giá SP</td>
                 
            <td><asp:TextBox ID="txtGiaSP" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Mô tả</td>
                
            <td> <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox></td>
        </tr>  
        <tr>
            <td>Đường dẫn hình</td>
                 
            <td><asp:TextBox ID="txtDuongDanHinh" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Mã loại</td>
                 
            <td><asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Button ID="btnAdd" runat="server" Text="ADD" OnClick="btnAdd_Click" /></td>
        </tr>
    </table>
       
    </div>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div>
                <h1>Quản lý sản phẩm</h1>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaDan" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Height="211px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />


                        <asp:TemplateField HeaderText="Mã SP" InsertVisible="False" SortExpression="MaDan">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDan") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">INSERT</asp:LinkButton>
                            </FooterTemplate>

                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Tên SP" SortExpression="TenSP">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenDan") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Giá" SortExpression="Gia">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gia") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gia") %>'></asp:Label>
                            </ItemTemplate>
                      
                            <FooterTemplate>
                                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>

                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mô Tả" SortExpression="MoTa">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MoTa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Đường Dẫn" SortExpression="Hinh">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Hinh") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Hinh") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDuongDan" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mã Loại" SortExpression="MaLoai">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MaLoai") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MaLoai") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
         
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTL_Web %>" SelectCommand="SELECT * FROM [DanPiano]" DeleteCommand="DELETE  from [DanPiano] where MaDan = @MaDan " UpdateCommand="UPDATE [DanPiano] set TenDan = @TenSP, Gia = @Gia, MoTa = @MoTa, Hinh = @DuongDan where MaDan= @MaDan" InsertCommand="Insert into [DanPiano] (TenDan,Gia,MoTa,MaLoai,Hinh) VALUES (@TenSP,@Gia,@MoTa,@MaLoai,@DuongDan)  ">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDan" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                         <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" /> 
                        <asp:Parameter Name="Hinh" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                          <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" />
                        <asp:Parameter Name="Hinh" Type="String" />
                    </UpdateParameters> 
                </asp:SqlDataSource>
            </div>
             <asp:Button ID="Button2" runat="server" Text="Step 2>>" OnClick="Button2_Click1" />
        </asp:View>

        <asp:View ID="View2" runat="server">
            <div>
                <h1>Quản lý sản phẩm</h1>
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaDan" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Height="211px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />


                        <asp:TemplateField HeaderText="Mã SP" InsertVisible="False" SortExpression="MaDan">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDan") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">INSERT</asp:LinkButton>
                            </FooterTemplate>

                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Tên SP" SortExpression="TenSP">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenDan") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Giá" SortExpression="Gia">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gia") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gia") %>'></asp:Label>
                            </ItemTemplate>
                      
                            <FooterTemplate>
                                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>

                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mô Tả" SortExpression="MoTa">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MoTa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Đường Dẫn" SortExpression="Hinh">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Hinh") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Hinh") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDuongDan" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mã Loại" SortExpression="MaLoai">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MaLoai") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MaLoai") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
         
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTL_Web %>" SelectCommand="SELECT * FROM [DanOgran]" DeleteCommand="DELETE  from [DanOgran] where MaDan = @MaDan " UpdateCommand="UPDATE [DanOgran] set TenDan = @TenSP, Gia = @Gia, MoTa = @MoTa, Hinh = @DuongDan where MaDan= @MaDan" InsertCommand="Insert into [DanOgran] (TenDan,Gia,MoTa,MaLoai,Hinh) VALUES (@TenSP,@Gia,@MoTa,@MaLoai,@DuongDan)  ">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDan" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                         <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" /> 
                        <asp:Parameter Name="Hinh" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                          <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" />
                        <asp:Parameter Name="Hinh" Type="String" />
                    </UpdateParameters> 
                </asp:SqlDataSource>
            </div>
             <asp:Button ID="Button1" runat="server" Text="<<Step 1" OnClick="Button1_Click" />
             <asp:Button ID="Button3" runat="server" Text=" Step 3>>" OnClick="Button3_Click"/>
        </asp:View>

        <asp:View ID="View3" runat="server">
            <div>
                <h1>Quản lý sản phẩm</h1>
                <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaDan" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Height="211px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />


                        <asp:TemplateField HeaderText="Mã SP" InsertVisible="False" SortExpression="MaDan">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDan") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">INSERT</asp:LinkButton>
                            </FooterTemplate>

                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Tên SP" SortExpression="TenSP">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenDan") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Giá" SortExpression="Gia">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gia") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gia") %>'></asp:Label>
                            </ItemTemplate>
                      
                            <FooterTemplate>
                                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>

                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mô Tả" SortExpression="MoTa">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MoTa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Đường Dẫn" SortExpression="Hinh">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Hinh") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Hinh") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDuongDan" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mã Loại" SortExpression="MaLoai">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MaLoai") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MaLoai") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
         
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BTL_Web %>" SelectCommand="SELECT * FROM [DanGuitar]" DeleteCommand="DELETE  from [DanGuitar] where MaDan = @MaDan " UpdateCommand="UPDATE [DanGuitar] set TenDan = @TenSP, Gia = @Gia, MoTa = @MoTa, Hinh = @DuongDan where MaDan= @MaDan" InsertCommand="Insert into [DanGuitar (TenDan,Gia,MoTa,MaLoai,Hinh) VALUES (@TenSP,@Gia,@MoTa,@MaLoai,@DuongDan)  ">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDan" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                         <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" /> 
                        <asp:Parameter Name="Hinh" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                          <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" />
                        <asp:Parameter Name="Hinh" Type="String" />
                    </UpdateParameters> 
                </asp:SqlDataSource>
            </div>
             <asp:Button ID="Button4" runat="server" Text="<<Step 2" OnClick="Button4_Click" />
             <asp:Button ID="Button5" runat="server" Text=" Step 4>>" OnClick="Button5_Click"/>
        </asp:View>

         <asp:View ID="View4" runat="server">
            <div>
                <h1>Quản lý sản phẩm</h1>
                <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaDan" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Height="211px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />


                        <asp:TemplateField HeaderText="Mã SP" InsertVisible="False" SortExpression="MaDan">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDan") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">INSERT</asp:LinkButton>
                            </FooterTemplate>

                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Tên SP" SortExpression="TenSP">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenDan") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenDan") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                 <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                            </FooterTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Giá" SortExpression="Gia">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gia") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gia") %>'></asp:Label>
                            </ItemTemplate>
                      
                            <FooterTemplate>
                                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>

                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mô Tả" SortExpression="MoTa">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MoTa") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Đường Dẫn" SortExpression="Hinh">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Hinh") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Hinh") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDuongDan" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mã Loại" SortExpression="MaLoai">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MaLoai") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MaLoai") %>'></asp:Label>
                            </ItemTemplate>
                              <FooterTemplate>
                                <asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
         
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BTL_Web %>" SelectCommand="SELECT * FROM [DanDrum]" DeleteCommand="DELETE  from [DanDrum] where MaDan = @MaDan " UpdateCommand="UPDATE [DanDrum] set TenDan = @TenSP, Gia = @Gia, MoTa = @MoTa, Hinh = @DuongDan where MaDan= @MaDan" InsertCommand="Insert into DanDrum (TenDan,Gia,MoTa,MaLoai,Hinh) VALUES (@TenSP,@Gia,@MoTa,@MaLoai,@DuongDan)  ">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDan" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                         <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" /> 
                        <asp:Parameter Name="Hinh" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                          <asp:Parameter Name="TenDan" Type="String" />
                         <asp:Parameter Name="Gia" Type="Double" />
                         <asp:Parameter Name="MoTa" Type="String" />
                         <asp:Parameter Name="MaLoai" Type="Int32" />
                        <asp:Parameter Name="Hinh" Type="String" />
                    </UpdateParameters> 
                </asp:SqlDataSource>
            </div>
             <asp:Button ID="Button6" runat="server" Text="<<Step 3" OnClick="Button6_Click" />
             
        </asp:View>

    </asp:MultiView>



</asp:Content>

