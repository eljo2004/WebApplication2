<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
     <div class="header_section">
    <div class="container">
       <div class="containt_main">
          <div id="mySidenav" class="sidenav">
             <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
             <a href="index.html">Home</a>
             <a href="fashion.html">Fashion</a>
             <a href="electronic.html">Electronic</a>
             <a href="jewellery.html">Jewellery</a>
          </div>
          <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png"></span>
          <div class="dropdown">
             <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All Category 
             </button>
              <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                 <asp:ListItem>
                 </asp:ListItem>
              </asp:DropDownList>
             <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
             </div>
          </div>
          <div class="main">
             <!-- Another variation with a button -->
             <div class="input-group">
                 <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search this blog"></asp:TextBox>
                <div class="input-group-append">

                    <asp:Button ID="Button1" runat="server" Text="🔍" class="btn btn-secondary "  style="background-color: #f26522; border-color:#f26522 " OnClick="Button1_Click1"   ></asp:Button>

                </div>
             </div>
          </div>
          <div class="header_box">
             <div class="lang_box ">
                <a href="#" title="Language" class="nav-link" data-toggle="dropdown" aria-expanded="true">
                <img src="images/flag-uk.png" alt="flag" class="mr-2 " title="United Kingdom"> English <i class="fa fa-angle-down ml-2" aria-hidden="true"></i>
                </a>
                &nbsp;&nbsp;<div class="dropdown-menu ">
                   <a href="#" class="dropdown-item">
                   <img src="images/flag-france.png" class="mr-2" alt="flag">
                   French
                   </a>
                &nbsp;&nbsp;</div>
             </div>
             <div class="login_menu">
                <ul>
                   <li><a href="#">
                      <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                      <span class="padding_10">Cart</span></a>
                   </li>
                   <li><a href="#">
                      <i class="fa fa-user" aria-hidden="true"></i>
                      <span class="padding_10">Cart</span></a>
                   </li>
                </ul>
             </div>
          </div>
       </div>
    </div>
 </div>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <div class="banner_section layout_padding">
    <div class="container">
       <div id="my_slider" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
             <div class="carousel-item active">
                <div class="row">
                   <div class="col-sm-12">
                      <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                      <div class="buynow_bt"><a href="#">Buy Now</a></div>
                   </div>
                </div>
             </div>
             <div class="carousel-item">
                <div class="row">
                   <div class="col-sm-12">
                      <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                      <div class="buynow_bt"><a href="#">Buy Now</a></div>
                   </div>
                </div>
             </div>
             <div class="carousel-item">
                <div class="row">
                   <div class="col-sm-12">
                      <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                      <div class="buynow_bt"><a href="#">Buy Now</a></div>
                   </div>
                </div>
             </div>
          </div>
          <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
          <i class="fa fa-angle-left"></i>
          </a>
          <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
          <i class="fa fa-angle-right"></i>
          </a>
       </div>
    </div>
 </div>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <li><a href="Login.aspx">Login</a></li>
    <li><a href="AdminRegistration.aspx">Registration</a></li>
</asp:Content>
