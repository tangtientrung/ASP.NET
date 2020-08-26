<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddTour.aspx.cs" Inherits="ASP.NET.Admin.AddTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <table cellpadding="0" cellspacing="0" class="auto-style1" style="width: 100%" >
            <tr>
                <td style="width: 20%"><asp:Label ID="Label1" runat="server" Text="ID:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label2" runat="server" Text="Ảnh:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:FileUpload ID="uploadAnh" runat="server" /></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label3" runat="server" Text="Tên:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtPhone" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label4" runat="server" Text="Mô tả:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label5" runat="server" Text="Giá:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label6" runat="server" Text="Điểm khởi hành:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtTrangThai" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label7" runat="server" Text="Điểm đến:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label8" runat="server" Text="Thời gian:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>     
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label9" runat="server" Text="Phương tiện:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:DropDownList ID="ddlPhuongTien" runat="server">
                    <asp:ListItem>Xe máy</asp:ListItem>
                    <asp:ListItem>Ô tô</asp:ListItem>
                    <asp:ListItem>Xe khách</asp:ListItem>
                    <asp:ListItem>Tàu hỏa</asp:ListItem>
                    <asp:ListItem>Tàu thủy</asp:ListItem>
                    <asp:ListItem>Máy bay</asp:ListItem>
                </asp:DropDownList></td>

            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label10" runat="server" Text="Lịch trình:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox></td>     
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label11" runat="server" Text="Thành phố:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:DropDownList ID="ddlTp" runat="server" DataSourceID="SelectAllPlace"></asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label12" runat="server" Text="Trạng thái:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>     
            </tr>
        </table>
        <asp:Button ID="btnThem" runat="server" Text="Lưu" style="margin-left:150px"   />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SelectAllPlace"></asp:GridView>
        <asp:SqlDataSource ID="SelectAllPlace" runat="server" ConnectionString="<%$ ConnectionStrings:SelectAllPlace %>" SelectCommand="SELECT * FROM [Place] Join [Country] on Country.CountryId=Place.CountryId where Country.CountryId='VN'"></asp:SqlDataSource>
        <br />
</asp:Content>
