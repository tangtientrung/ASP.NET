<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="ASP.NET.Admin.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainRight" runat="server">
    <div>
        

        
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td style="width: 20%"><asp:Label ID="Label1" runat="server" Text="Tên khách hàng:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label2" runat="server" Text="Email:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label3" runat="server" Text="Số điện thoại:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtPhone" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label4" runat="server" Text="Địa chỉ:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label5" runat="server" Text="Quyền:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:DropDownList ID="ddlRole" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoleName" DataValueField="RoleId"></asp:DropDownList></td>      
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label6" runat="server" Text="Trạng thái:" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:RadioButtonList ID="rbStatus" runat="server">
                        <asp:ListItem >Enable</asp:ListItem>
                        <asp:ListItem>Disable</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            
        </table>
        <asp:Button ID="btnThem" runat="server" Text="Lưu" style="margin-left:150px" OnClick="btnThem_Click"  />
        <br />
       
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SelectAllRole %>" SelectCommand="SELECT * FROM [Role]"></asp:SqlDataSource>
    </div>
    
</asp:Content>
