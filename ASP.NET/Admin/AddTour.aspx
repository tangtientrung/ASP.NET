<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddTour.aspx.cs" Inherits="ASP.NET.Admin.AddTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <table cellpadding="0" cellspacing="0" class="auto-style1" style="width: 100%" >
            <tr>
                <td style="width: 20%"><asp:Label ID="Label1" runat="server" Text="ID:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtId" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label2" runat="server" Text="Ảnh:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:FileUpload ID="fileUploadAnh" runat="server" /></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label3" runat="server" Text="Tên:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtName" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label4" runat="server" Text="Mô tả:" ForeColor="Red" Width="100%"  ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtDescription" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label5" runat="server" Text="Giá:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtPrice" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label6" runat="server" Text="Điểm khởi hành:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtDeparture" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label7" runat="server" Text="Điểm đến:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtDestination" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label8" runat="server" Text="Thời gian:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtTime" runat="server" Width="100%"></asp:TextBox></td>     
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label9" runat="server" Text="Phương tiện:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:DropDownList ID="ddlVehicle" runat="server">
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
                <td><asp:TextBox ID="txtSchedule" runat="server" Width="100%"></asp:TextBox></td>     
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label11" runat="server" Text="Thành phố:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:DropDownList ID="ddlPlace" runat="server" DataSourceID="SelectAllPlace" DataTextField="PlaceName" DataValueField="PlaceId"></asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label12" runat="server" Text="Trạng thái:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td>
                    <asp:RadioButtonList ID="rbStatus" runat="server">
                        <asp:ListItem >Enable</asp:ListItem>
                        <asp:ListItem>Disable</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnThem" runat="server" Text="Lưu" style="margin-left:150px" OnClick="btnThem_Click"   />
    
        <asp:SqlDataSource ID="SelectAllPlace" runat="server" ConnectionString="<%$ ConnectionStrings:SelectAllPlace %>" SelectCommand="SELECT * FROM [Place] WHERE ([CountryId] LIKE '%' + @CountryId + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="__VN" Name="CountryId" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
        <br />
    
</asp:Content>

