<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET.HomePage.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_body" runat="server">
    <table>
        <tr>
            <td>Email:*</td>
            <td><asp:TextBox ID="txtEmail" runat="server" placeholder="Example@gmail.com"></asp:TextBox></td>
        </tr>
        <tr>
                <td></td>
                <td><asp:Label ID="lbEmail" runat="server" ForeColor="Red" ></asp:Label></td>
        </tr>


        <tr>
            <td>Password:*</td>
            <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
                <td></td>
                <td><asp:Label ID="lbPassword" runat="server" ForeColor="Red" ></asp:Label></td>
        </tr>


        <tr>
            <td rowspan="2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
