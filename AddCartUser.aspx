<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCartUser.aspx.cs" Inherits="WebApplication2.CartUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 118px;
        }
        .auto-style2 {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                        <li><a href="UserHome.aspx">Home</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="200px" Width="190px" /><br />
    <table>
        <tr>
            <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Product :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
         </tr>
         <tr>
             <td>
                    <asp:Label ID="Label2" runat="server" Text="Price :"></asp:Label>
             </td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
         </tr>
        <tr>
           <td>
                <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
           </td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Quantity :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="1"></asp:Label>   <asp:Button ID="Button2" runat="server" Text="+" Height="30px" Width="30px" OnClick="Button2_Click" />    <asp:Button ID="Button3" runat="server" Text="-" Height="30px" Width="30px" OnClick="Button3_Click" />
            </td>
        </tr>
    </table><br />
    <asp:Button ID="Button1" runat="server" Text="ADD CART" OnClick="Button1_Click" />
</asp:Content>
