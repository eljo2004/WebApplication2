<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication2.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">

    <div class="col-sm-12">
        <div class="form" style="width:500px;background-color:gray;">
            <center>
                <label>Account No :</label>
                 <asp:TextBox ID="TextBox1" runat="server"  CssClass="text-danger"></asp:TextBox><br /><br />
                 <asp:Button ID="Button1" runat="server" Text="Proceed" OnClick="Button1_Click" CssClass="btn btn-success"/>
            </center>
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
