<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="WebApplication2.AdminRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <li><a href="Login.aspx">Login</a></li>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="row">

    <div class="col-sm-12">
        <div class="form">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Admin Name" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Admin Email" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Admin Address" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Admin Phone" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Admin Status" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Username" CssClass="input" ></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Password" CssClass="input"></asp:TextBox>

            <center><asp:Button ID="Button1" runat="server" Text="Register" CssClass="el" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label1" runat="server" Text="" style="color:red;"></asp:Label>
            </center>
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
