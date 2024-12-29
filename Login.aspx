<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <li><a href="AdminRegistration.aspx">Admin Registration</a></li>
        <li><a href="UserRegistration.aspx">User Registration</a></li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%-- <style>
    *,
    *:before,
    *:after {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }
    /* body {
      background: url(https://source.unsplash.com/1920x2400?hdr,sunset,ocean);
      background-size: cover;
      background-repeat: no-repeat;
      
    }*/
     
</style>--%>
<div class="row">

    <div class="col-sm-12">
        <div class="form">
             <h3>Login</h3>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="username" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="input"></asp:TextBox>
            <center><asp:Button ID="Button1" runat="server" Text="Login" class="el" OnClick="Button1_Click"/><br />
                <asp:Label ID="Label1" runat="server" Text="" style="color:red;"></asp:Label>
            </center>
        </div>
        
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
</asp:Content>
