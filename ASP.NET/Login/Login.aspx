<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET.Login.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_body" runat="server">

    <div class="login-form w3_form">
  <!--  Title-->
      <div class="login-title w3_title">
           <h1>Elegant login Form</h1>
      </div>
           <div class="login w3_login">
                <h2 class="login-header w3_header">Log in</h2>
				    <div class="w3l_grid">
                        <form class="login-container" action="#" method="post">
                             <input type="email" placeholder="Email" Name="Email" required="" >
                             <input type="password" placeholder="Password" Name="password" required="">
                             <input type="submit" value="Submit">
                        </form>
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
</asp:Content>
