<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="login-form w3_form">
                  <!--  Title-->
                      <div class="login-title w3_title">
                           <h1>HaNoiTourist.com.vn</h1>
                      </div>
                           <div class="login w3_login">
                                <h2 class="login-header w3_header">Log in</h2>
				                    <div class="w3l_grid">
                                        <div style="width:100%;margin-left:100px;margin-bottom:10px"><asp:TextBox ID="txtEmail" runat="server" Width="190px" Height="30px" Placeholder="Email"></asp:TextBox><br />
                                            <asp:Label ID="lbEmail" runat="server" ForeColor="Red"></asp:Label>
                                        </div>
                                        <div style="margin-left:100px;margin-bottom:10px" >
                                            <asp:TextBox TextMode="password" Width="200px" Height="30px"  ID="txtPassword" runat="server" Placeholder="Password"></asp:TextBox><br />
                                            <asp:Label ID="lbPassword" runat="server" ForeColor="Red"></asp:Label>
                                        </div>
                                        
                                       <div style="width:100%;margin-left:150px"><asp:Button ID="btnLogin" runat="server"  Height="30px" Text="Login" OnClick="btnLogin_Click" /><div style="width:100%"></div>
                                    </div>
                <div class="second-section w3_section">
                     <div class="bottom-header w3_bottom">
                          <h3>OR</h3>
                     </div>
                     <div class="social-links w3_social">
                         <ul>
                         <!-- facebook -->
                             <li> <a class="facebook" href="#" target="blank"><i class="fa fa-facebook"></i></a></li>

                         <!-- twitter -->
                             <li> <a class="twitter" href="#" target="blank"><i class="fa fa-twitter"></i></a></li>

                         <!-- google plus -->
                             <li> <a class="googleplus" href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
                       </ul>
                   </div>
                </div>
                 
                <div class="bottom-text w3_bottom_text">
                      <p>No account yet?<a href="#">Signup</a></p>
                      <h4> <a href="#">Forgot your password?</a></h4>
                </div>

                                  </div>
                       </div>
  
                </div>
  
  


  
                
        
    </form>
</body>
</html>
