<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="WebApplication2.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                        <li><a href="UserHome.aspx">Home</a></li>
                <li><a href="Cart.aspx">Cart</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" BorderWidth="0px" CellSpacing="10" CssClass="l" DataKeyField="CatId" >
        <ItemTemplate >
            <div class="s">
              <center>  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("CatImage") %>' Height="250px" Width="250px" CommandArgument='<%# Eval("CatId") %>' OnCommand="ImageButton1_Command" /></center><br />
               <b><asp:Label ID="Label1" runat="server" Text='<%# Eval("CatName") %>' onclick="ImageButton1_Click"></asp:Label></b><br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CatDescription") %>' Width="250px" CssClass="m" onclick="ImageButton1_Click"></asp:Label>
                <br />
                </div>

        </ItemTemplate>

    </asp:DataList>
    <style>
        .l{
/*            width:100%;*/
            margin-left:60px;
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
