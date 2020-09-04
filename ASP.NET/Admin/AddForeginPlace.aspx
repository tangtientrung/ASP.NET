<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddForeginPlace.aspx.cs" Inherits="ASP.NET.Admin.AddForeginPlace" %>
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
            <td style="width:100px"><asp:Label ID="Label3" runat="server" Text="Châu lục"></asp:Label></td>
            <td>
            <asp:DropDownList ID="ddlCountry" runat="server"></asp:DropDownList>

            </td>
        </tr>
        
        <tr>
            <td colspan="2"><asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" /></td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SelectAllForeignPlace %>" SelectCommand="SELECT * FROM [Country] WHERE ([CountryId] NOT LIKE '%' + @CountryId + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="__VN" Name="CountryId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
