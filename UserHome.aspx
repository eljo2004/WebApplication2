<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="UserHome.aspx.cs"  Inherits="WebApplication2.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .q{
           margin-top:100px;
        }
        .v{
            margin-bottom:60px;
            margin-top:20px;
        }
    </style>

      <div id="my_slider" class="carousel slide v" data-ride="caroyyyyyusel">
         <div class="carousel-inner ">
            <div class="carousel-item active">
               <div class="row v">
                  <div class="col-sm-12 ">
                     <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                     
                     <div class="buynow_bt"><a href="#DataList1">Buy Now</a></div>
                  </div>
               </div>
            </div>
               <%
              List<string> myList = new List<string>();
              myList = (List<string>)Session["y"];
              foreach (var x in myList)
              {
                  ImageButton2.ImageUrl = x.ToString();
              %>

            <div class="carousel-item ">
                <center>
                     <div class="BG">
                          <div class="row">
                             <div class="col-sm-12">
                                <center><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="" Height="290px" Width="250px" CssClass="m-1" /></center>
                                <%--<div class="buynow_bt"><a href="#">Buy Now</a></div>--%>
                             </div>
                         </div>
                     </div>
                </center>
       
     
           </div>

          <% } %>
          <%--  <div class="carousel-item">
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
            </div>--%>
         </div>
         <a class="carousel-control-prev q" href="#my_slider" role="button" data-slide="prev">
         <i class="fa fa-angle-left"></i>
         </a>
         <a class="carousel-control-next q" href="#my_slider" role="button" data-slide="next">
         <i class="fa fa-angle-right"></i>
         </a>
      </div>
    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" BorderWidth="0px" CellSpacing="10" CssClass="l" DataKeyField="CatId" >
        <ItemTemplate >
            <div class="s">
              <center>  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("CatImage") %>' Height="250px" Width="250px" CommandArgument='<%# Eval("CatId") %>' OnCommand="ImageButton1_Command" /></center><br />
               <b><asp:Label ID="Label1" runat="server" Text='<%# Eval("CatName") %>' onclick="ImageButton1_Click"></asp:Label></b><br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CatDescription") %>' Width="250px" CssClass="m" onclick="ImageButton1_Click"></asp:Label>
                <br />
                </div>

        </ItemTemplate>

    </asp:DataList>
    <style>
        .l{
/*            width:100%;*/
            margin-left:60px;
        }
        .s{
             border: 2px solid rgba(255, 255, 255, 0.1);
             box-shadow: 0 0 40px rgba(8, 7, 16, 0.6); 
             margin:35px;
             padding:10px;
        }
        .auto-style1 {
            width: 250px;
        }
        .m{
            overflow-wrap:anywhere
        }
         .lo{
              background-color:#111111;
              border-radius: 5px;
              cursor: pointer;
              color: #fff;
         }
         .lo:hover{
           background: #f26522;
           color: #000000;

         }

    </style>

   
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder4">
      <!-- header section start -->

  <div class="header_section">
     <div class="container">
        <div class="containt_main">
           <div id="mySidenav" class="sidenav">
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
              <a href="UserHome.aspx">Home</a>
              <a href="Cart.aspx">Cart</a>
              <a href="Vieworder.aspx">View Order</a>
            <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i>
                    <span class="padding_10">Account</span></button>
                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="background-color:#111111;">       
                <a class="" href="#">Edit</a>
                <a class="" href="Login.aspx">
                    <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="lo" OnClick="Button2_Click" OnClientClick="re()" />
                </a>       
            </div>
            </div>
           </div>
           <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png"></span>
         
           <div class="main">
              <!-- Another variation with a button -->
              <div class="input-group">
                 <input type="text" class="form-control" placeholder="Search here" name="search">
                 <div class="input-group-append">
                   
                     <div>
                         <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-secondary" style="background-color: #f26522; border-color:#f26522 " OnClick="Button1_Click"/>
                     </div>
                 </div>
              </div>
           </div>
           <div class="header_box">
            
              <div class="login_menu">
                 <ul>
                    <li><a href="Cart.aspx">
                       <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                       <span class="padding_10">Cart</span></a>
                    </li>
                   
                 </ul>
              </div>
           </div>
        </div>
     </div>
  </div>
      
  <!-- header section end -->
</asp:Content>

