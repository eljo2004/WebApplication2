<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplication2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">

    <div class="col-sm-12">
        <div class="form">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Address" CssClass="input"></asp:TextBox>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Username" CssClass="input" ></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Password" CssClass="input"></asp:TextBox>

            <center><asp:Button ID="Button1" runat="server" Text="Register" CssClass="el" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label1" runat="server" Text="" style="color:red;"></asp:Label>
            </center>
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
