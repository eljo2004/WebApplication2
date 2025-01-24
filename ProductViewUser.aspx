<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductViewUser.aspx.cs" Inherits="WebApplication2.ProductViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                        <li><a href="UserHome.aspx">Home</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .q{
           margin-top:100px;
        }
        .v{
            margin-bottom:70px;
        }
    </style>

      <div id="my_slider" class="carousel slide v" data-ride="caroyyyyyusel">
         <div class="carousel-inner ">
            <div class="carousel-item active">
               <div class="row v">
                  <div class="col-sm-12 ">
                     <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                     <%--<div class="buynow_bt"><a href="#">Buy Now</a></div>--%>
                  </div>
               </div>
            </div>
               <%
              List<string> myList = new List<string>();
              myList = (List<string>)Session["i"];
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

    <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="2">
                        <div class="s">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="190px" ImageUrl='<%# Eval("ProductImage") %>' CommandArgument='<%# Eval("ProductId") %>' OnCommand="ImageButton1_Command" />
                        </div>
                    </td>
                    <td>
                      <b>  <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label></b><br />
                        <asp:Label ID="Label5" runat="server" Text="₹"></asp:Label> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label><br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductStatus") %>'></asp:Label><br />
                    </td>
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:DataList>
      <style>
      .l{
          width:100%;
          margin-left:8px;
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
  </style>

</asp:Content>
