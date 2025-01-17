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
        .auto-style5 {
            margin-right: 0px;
        }

/* pop up form       */


.box {
  background-color: black;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.box a {
  display: inline-block;
  background-color: #fff;
  padding: 15px;
  border-radius: 3px;
}

.modal {
  align-items: center;
  display: flex;
  justify-content: center;
  position: absolute;
  top: 255px;
  bottom: 0;
  left: 0;
  right: 0;
  /* padding-top:0px ;*/
  padding-bottom:1px ;

  transition: all 0.4s;
  visibility: hidden;
  opacity: 0;
}

.content {
  position: absolute;
  background: white;
/*  min-width: 40%;*/
 min-height :50%;
  box-shadow: 0 0 25px -15px rgba(0, 0, 0, 0.615);
  padding:5px 5px 5px 5px;  
  border-radius: 6px;
  overflow-wrap:anywhere;
}

.modal:target {
  visibility: visible;
  opacity: 1;
}

.box-close {
  position: absolute;
  top: 0;
  right: 15px;
  color: #fe0606;
  text-decoration: none;
  font-size: 30px;
}
.box-close:hover{
color: #0c0c0c;
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

                    <li><a href="UserHome.aspx">Home</a></li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="449px" CssClass="auto-style5">
                  <Columns>
                      <asp:BoundField DataField="ProductName" HeaderText="Product" />
                      <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                      <asp:BoundField DataField="Price" HeaderText="Price" />
                  </Columns>
              </asp:GridView><br />
              <script src="XMLFile1.xml"></script>
              <div style="text-align:right;" class="auto-style4"> <b class="auto-style3"><asp:Label ID="Label12" runat="server" Text="Grand Total :"></asp:Label>          <asp:Label ID="Label11" runat="server" Text=""></asp:Label></b>
              <br /><br />
                 
                  <asp:Button ID="Button1" runat="server" Text="Payment" OnClick="Button1_Click" CssClass="btn btn-success" />

              </div>
          </div>
      </div>
  </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

<div id="popup" class="modal">
    <div class="content">
        <div>
                <a href="#contact" class="box-close">×</a>
        </div>
        <div>
                   <div class="container rounded bg-white mt-7 mb-5">
           <div class="row">
<table >
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="auto-style1">&nbsp;</td>
    <td>&nbsp;</td>
</tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label13" runat="server" Text="Account No :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label14" runat="server" Text="Account Type :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label15" runat="server" Text="Amount :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click1"  />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

           </div>
       </div>
        </div>
       
    </div>
</div>

</asp:Content>
