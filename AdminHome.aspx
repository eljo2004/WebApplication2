<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="banner_section layout_padding">
     <div class="container">
        <div id="my_slider" class="carousel slide" data-ride="carousel">
           <div class="carousel-inner">
              <div class="carousel-item active">
                 <div class="row">
                    <div class="col-sm-12">
                       <h1 class="banner_taital"><br><br /><br /></h1>
                       
                    </div>
                 </div>
              </div>
            </div>
        </div>
    </div>
</div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <li><a href="AdminHome.aspx">Home</a></li>
        <li><a href="Category.aspx">Category</a></li>
         <li><a href="Product.aspx">Product</a></li>
             <li><a href="ViewFeedback.aspx">View Feedback</a></li>
    <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
</asp:Content>
