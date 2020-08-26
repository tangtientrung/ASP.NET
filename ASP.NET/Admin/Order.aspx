<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ASP.NET.Admin.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SelectAllOrder %>" DeleteCommand="DELETE FROM [Orders] WHERE [UserId] = @UserId AND [TourId] = @TourId" InsertCommand="INSERT INTO [Orders] ([UserId], [TourId], [Status]) VALUES (@UserId, @TourId, @Status)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Status] = @Status WHERE [UserId] = @UserId AND [TourId] = @TourId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="TourId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="TourId" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="TourId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId,TourId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="TourId" HeaderText="TourId" ReadOnly="True" SortExpression="TourId" />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:CommandField CancelText="huy" EditText="sua" HeaderText="Sua" ShowEditButton="True" UpdateText="ok" />
            <asp:CommandField DeleteText="Xoa" HeaderText="Xoa" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
