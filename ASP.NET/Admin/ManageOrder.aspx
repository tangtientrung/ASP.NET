<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ManageOrder.aspx.cs" Inherits="ASP.NET.Admin.ManageOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <asp:DropDownList ID="ddlLc" runat="server">
        <asp:ListItem>Tour thanh toán</asp:ListItem>
        <asp:ListItem>Tour chưa thanh toán</asp:ListItem>
        <asp:ListItem>Hot tour</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnLoc" runat="server" Text="Lọc" OnClick="btnLoc_Click" />
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
           
            <asp:TemplateField HeaderText="Trạng thái">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>


