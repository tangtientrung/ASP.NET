<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddPlace.aspx.cs" Inherits="ASP.NET.Admin.AddPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <table cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td style="width:100px"><asp:Label ID="Label1" runat="server" Text="Id"></asp:Label></td>
            <td><asp:TextBox ID="txtPlaceId" runat="server" Width="328px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width:100px"><asp:Label ID="Label2" runat="server" Text="Tên thành phố"></asp:Label></td>
            <td><asp:TextBox ID="txtPlaceName" runat="server" Width="328px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width:100px"><asp:Label ID="Label3" runat="server" Text="Miền"></asp:Label></td>
            <td>
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem>Bắc</asp:ListItem>
                <asp:ListItem>Trung</asp:ListItem>
                <asp:ListItem>Nam</asp:ListItem>
            </asp:DropDownList>

            </td>
        </tr>
        
        <tr>
            <td colspan="2"><asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" /></td>
        </tr>
    </table>

</asp:Content>

