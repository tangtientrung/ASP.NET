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
                <td style="width: 20%"><asp:Label ID="Label1" runat="server" Text="Tên khách hàng: *" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtUserName" runat="server" Width="100%" ></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lbUserName" runat="server" ForeColor="Red" ></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label2" runat="server" Text="Email: *" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lbEmail" runat="server" ForeColor="Red" ></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 20%"><asp:Label ID="Label7" runat="server" Text="Password: *" ForeColor="Red" Width="100%" ></asp:Label><br /></td>
                <td><asp:TextBox ID="txtPass" runat="server" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lbPassword" runat="server" ForeColor="Red" ></asp:Label></td>
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
                <td><asp:DropDownList ID="ddlRole" runat="server" >
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList></td>      
            </tr>     
        </table>
        <asp:Button ID="btnThem" runat="server" Text="Lưu" style="margin-left:150px" OnClick="btnThem_Click"  />
        <br />
    </div>
    
</asp:Content>
