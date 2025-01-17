<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 108px;
        }
        .auto-style4 {
            width: 121px;
        }
        .auto-style5 {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                <li><a href="UserHome.aspx">Home</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ><div class="b">
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" Width="50%" CssClass=" m-3" >
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' Height="200px" Width="190px" />
            <asp:Button ID="Button1" runat="server" Text="Delete" CommandArgument='<%# Eval("CartId") %>'  CommandName="Delete" /> <asp:Button ID="Button2" runat="server" Text="Edit" CommandArgument='<%# Eval("CartId") %>' CommandName="Edit" />
             <table>
     <tr>
         <td class="auto-style2">
                 <asp:Label ID="Label1" runat="server" Text="Product :"></asp:Label>
         </td>
         <td class="auto-style5">
             <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
         </td>
      </tr>
      <tr>
          <td class="auto-style2">
                 <asp:Label ID="Label2" runat="server" Text="Price :"></asp:Label>
          </td>
         <td class="auto-style5">
             <asp:Label ID="Label6" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
         </td>
      </tr>
     <tr>
        <td class="auto-style2">
             <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
        </td>
         <td class="auto-style5">
             <asp:Label ID="Label7" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label>
         </td>
     </tr>
     <tr>
         <td class="auto-style2">
             <asp:Label ID="Label4" runat="server" Text="Quantity :"></asp:Label>
         </td>
         <td class="auto-style5">
             <asp:Label ID="Label8" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label><asp:Button ID="Button3" runat="server" Text="+" CssClass="m-2" Height="30px" Width="30px" CommandArgument="<%# 1 %>" CommandName="Add"  />    <asp:Button ID="Button4" runat="server" Text="-" Height="30px" Width="30px" CommandArgument="<%# -1 %>" CommandName="sub" />
         </td>
     </tr>
                 <tr>
                     <td class="auto-style2">
                         <asp:Label ID="Label9" runat="server" Text="Total :"></asp:Label>
                     </td>
                     <td class="auto-style5">
                         <asp:Label ID="Label10" runat="server" Text='<%# Eval("SubTotal") %>'></asp:Label>
                     </td>
                 </tr>
 </table><br />
        </ItemTemplate>
    </asp:DataList>
    <asp:Button ID="Button5" runat="server" Text="Continue" OnClick="Button5_Click1" CssClass="m-3"/>
    <script>
        //function fun() {
        //    var txt
        //    if (confirm("helo")) {
        //        document.write("ok");
        //    }
        //    else {
        //        document.write("cancel")
        //    }
        //}
    </script>
    </div>
</asp:Content>
