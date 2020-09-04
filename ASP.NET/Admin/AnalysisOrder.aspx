<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AnalysisOrder.aspx.cs" Inherits="ASP.NET.Admin.AnalysisOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Từ" ></asp:Label></td>
            <td style="margin-left:10px;margin-right:10px"><asp:TextBox ID="txtBD"  runat="server" placeholder="mm/dd/yyyy" Textmode="Date" ReadOnly = "false"></asp:TextBox></td>
            <td><asp:Label ID="Label4" runat="server" Text="Đến"></asp:Label></td>
            <td><asp:TextBox ID="txtKT" runat="server" placeholder="mm/dd/yyyy" Textmode="Date" ReadOnly = "false"></asp:TextBox></td>
            <td><asp:Button ID="btnLoc" runat="server" Text="Lọc" OnClick="btnLoc_Click"  /></td>
        </tr>
    </table>
    <asp:GridView ID="grvOrder" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="Họ tên KH">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tour">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("TourName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày đặt tour">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("DateOrder") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="grvMoney" runat="server" Height="50px" Width="300px" AutoGenerateRows="False">
        <Fields>
            <asp:BoundField DataField="Tong" HeaderText="Tổng thu nhập : " DataFormatString="{0:0,0 vnđ}" />
        </Fields>
    </asp:DetailsView>
    
</asp:Content>
