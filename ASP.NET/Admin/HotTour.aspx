<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="HotTour.aspx.cs" Inherits="ASP.NET.Admin.HotTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <asp:GridView ID="grvHotTour" runat="server" AutoGenerateColumns="False" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:HyperLink ID="linkSua"  runat="server" NavigateUrl=<%#"~/Admin/AddTour.aspx?Id="+Eval("TourId") %>>Sửa</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:TemplateField HeaderText="Xoá" >
               <ItemTemplate>
                    <asp:HyperLink ID="linkXoa"  runat="server" NavigateUrl=<%#"~/Admin/AddTour.aspx?Ids="+Eval("TourId") %>>Xóa</asp:HyperLink>
               </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ảnh" >
                     <ItemTemplate>
                         <asp:Image Width="50px" ID="Image1" runat="server" ImageUrl='<%#Eval("TourPhoto") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mô tả">
                    <ItemTemplate>
                        <asp:Label Width="500px" ID="Label1" runat="server" Text='<%#Eval("TourDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Điểm khởi hành">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourDeparture") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Điểm đến">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourDestination") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thời gian">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourTime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phương tiện">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourVehicle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lịch trình">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("TourSchedule") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa điểm">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PlaceName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quốc gia">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("CountryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Trạng thái">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>

