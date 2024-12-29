<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 41%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: -41px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="row">
    <div class="col-sm-12">
        <center>
            <div class="auto-style1">

                <table class="w-100">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label2" runat="server" Text="Quantity :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="Price :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" Text="Image :"></asp:Label>
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server"  />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="Description :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text="Category :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

            </div>
        </center>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="300px" Width="400px" DataKeyNames="ProductId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="Product Id" Visible="False" />
            <asp:BoundField DataField="ProductName" HeaderText="Product" />
            <asp:BoundField DataField="stock" HeaderText="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Image">
            </asp:ImageField>
            <asp:BoundField DataField="ProductDescription" HeaderText="Description" />
            <asp:BoundField DataField="Productstatus" HeaderText="Status" />
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
