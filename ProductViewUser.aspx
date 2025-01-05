<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductViewUser.aspx.cs" Inherits="WebApplication2.ProductViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                        <li><a href="UserHome.aspx">Home</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="2">
                        <div class="s">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="190px" ImageUrl='<%# Eval("ProductImage") %>' CommandArgument='<%# Eval("ProductId") %>' OnCommand="ImageButton1_Command" />
                        </div>
                    </td>
                    <td>
                      <b>  <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label></b><br />
                        <asp:Label ID="Label5" runat="server" Text="₹"></asp:Label> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label><br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductStatus") %>'></asp:Label><br />
                    </td>
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:DataList>
      <style>
      .l{
          width:100%;
          margin-left:8px;
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
