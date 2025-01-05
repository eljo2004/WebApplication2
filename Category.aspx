<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebApplication2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 191px;
        }
        .auto-style2 {
            width: 39%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
            <li><a href="AdminHome.aspx">Home</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <div class="row">

    <div class="col-sm-12"><center>
       <table class="auto-style2">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Category :" ></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Image :"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click"  />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table></center>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="300px"  Width="500px"  OnSelectedIndexChanging="GridView1_SelectedIndexChanging" DataKeyNames="CatId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" >
        <Columns>
            <asp:BoundField DataField="CatId" HeaderText="Id" Visible="False" />
            <asp:BoundField DataField="CatName" HeaderText="Category" />
            <asp:ImageField DataImageUrlField="CatImage" HeaderText="Image">
            </asp:ImageField>
            <asp:BoundField DataField="CatDescription" HeaderText="Description" />
            <asp:BoundField DataField="CatStatus" HeaderText="Status" />
            <asp:CommandField ShowSelectButton="True" >
            <ControlStyle CssClass="btn btn-info" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" >
            <ControlStyle CssClass="btn btn-danger" />
            </asp:CommandField>
            <asp:CommandField ShowEditButton="True" >
            <ControlStyle CssClass="btn btn-success" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    </asp:Content>
