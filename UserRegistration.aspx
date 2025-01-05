<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplication2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
            <li><a href="Login.aspx">Login</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">

    <div class="col-sm-12">
        <div class="form">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" CssClass="input" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Name" ControlToValidate="TextBox1" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" CssClass="input"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Email" ControlToValidate="TextBox2" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone" CssClass="input"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter Phone" ControlToValidate="TextBox3" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Address" CssClass="input"></asp:TextBox></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Address" ControlToValidate="TextBox4" CssClass="text-danger"></asp:RequiredFieldValidator><br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br /></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Upload Photo" ControlToValidate="FileUpload1" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Username" CssClass="input" ></asp:TextBox></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter Username" ControlToValidate="TextBox6" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Password" CssClass="input"></asp:TextBox></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Enter Password" ControlToValidate="TextBox7" CssClass="text-danger"></asp:RequiredFieldValidator>

            <center><asp:Button ID="Button1" runat="server" Text="Register" CssClass="el" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label1" runat="server" Text="" style="color:red;"></asp:Label>
            </center>
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
