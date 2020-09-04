<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="ASP.NET.Admin.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
                     
                     <div id="search" style="width:100%;height:50px">
                                <asp:TextBox ID="txtTim" Width="30%" runat="server" placeholder="Nhập vào tên khách hàng"></asp:TextBox>
                                        

                     </div>
    
    <asp:GridView  ID="grvUser" runat="server" Width="100%" AutoGenerateColumns="False"  KeyFieldName="UserId" DataKeyNames="UserId" >
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pass">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Pass") %>'></asp:Label>
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Role Name">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
           
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:HyperLink ID="linkSua"  runat="server" NavigateUrl=<%#"~/Admin/AddUser.aspx?Id="+Eval("UserId") %>>Sửa</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:TemplateField HeaderText="Xoá" >
               <ItemTemplate>
                    <asp:HyperLink ID="linkXoa"  runat="server" NavigateUrl=<%#"~/Admin/AddUser.aspx?Ids="+Eval("UserId") %>>Xóa</asp:HyperLink>
               </ItemTemplate>
            </asp:TemplateField>
            
           
        </Columns>
    </asp:GridView>
</asp:Content>

