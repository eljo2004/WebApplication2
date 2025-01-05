<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="WebApplication2.Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 115px;
        }
        .auto-style2 {
            width: 244px;
        }
        .auto-style3 {
            width: 415px;
        }
        .auto-style4 {
            width: 413px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <div class="col-sm-12">
            <div class="form" style="width:500px;background-color:gray;">
                <asp:Label ID="Label9" runat="server" Text="Personal details"></asp:Label>
                <table>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                        </td>
                        <th class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Address :"></asp:Label>
                        </td>
                        <th class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server" Text="Phone :"></asp:Label>
                        </td>
                        <th class="auto-style2"> 
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label7" runat="server" Text="Email :"></asp:Label>
                        </td>
                        <th class="auto-style2">
                            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                        </th>
                    </tr>
                </table><br />

                <asp:Label ID="Label10" runat="server" Text="Product Details"></asp:Label><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="449px">
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="Product" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:BoundField DataField="SubTotal" HeaderText="Total" />
                    </Columns>
                </asp:GridView><br />
            <div style="text-align:right;" class="auto-style4"> <b class="auto-style3"><asp:Label ID="Label12" runat="server" Text="Grand Total :"></asp:Label>          <asp:Label ID="Label11" runat="server" Text=""></asp:Label></b>
                <br /><br /><asp:Button ID="Button1" runat="server" Text="Payment" CssClass="btn-success" /></div>
            </div>
        </div>
    </div>
</asp:Content>
