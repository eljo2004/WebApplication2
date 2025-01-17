<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Vieworder.aspx.cs" Inherits="WebApplication2.Vieworder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 178px;
        }
        .auto-style2 {
            width: 178px;
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <li><a href="UserHome.aspx">Home</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Delivery Address :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Delivery Status :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Delivery Date :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>

    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style5" style="margin-right: 8px">
         <ItemTemplate>
     <table>
         <tr>
             <td rowspan="2">
                 <div class="s">
                     <asp:Image ID="Image1" runat="server"  Width="190px" Height="200px" ImageUrl='<%# Eval("ProductImage") %>'/>
                 </div>
             </td>
             <td class="auto-style4">
               <b>  <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label></b><br />
                 <asp:Label ID="Label5" runat="server" Text="₹"></asp:Label> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label><br />
                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label><br />
             </td>
         </tr>
         
     </table>
             
 </ItemTemplate>
    </asp:DataList>

    <script>
        // script.js

        // To access the stars
        let stars =
            document.getElementsByClassName("star");
        var v = "";
        // Funtion to update rating
        function gfg(n) {
            remove();
            for (let i = 0; i < n; i++) {
                if (n == 1) cls = "one", v = "Very bad";
                else if (n == 2) cls = "two", v = " Bad";
                else if (n == 3) cls = "three", v = "Avarage";
                else if (n == 4) cls = "four", v = "Good";
                else if (n == 5) cls = "five", v = "Very Good";
                stars[i].className = "star " + cls;
            }
            document.getElementById('<%=Label9.ClientID %>').innerHTML = "Rating is: " + n + "/5";
            document.getElementById('<%=TextBox1.ClientID %>').value = v;

           //txt.innerHTML = "Rating is: " + n + "/5";
        }

        // To remove the pre-applied styling
        function remove() {
            let i = 0;
            while (i < 5) {
                stars[i].className = "star";
                i++;
            }
        }
    </script>
   <center> <div style="padding-left:45px" >
    
    <span onclick="gfg(1)"
          class="star">★
    </span>
    <span onclick="gfg(2)"
          class="star">★
    </span>
    <span onclick="gfg(3)"
          class="star">★
    </span>
    <span onclick="gfg(4)"
          class="star">★
    </span>
    <span onclick="gfg(5)"
          class="star">★
    </span><br />
        <asp:Label ID="Label9" runat="server" Text="" ></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
</div></center>

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

/*ratting*/
.card {
  max-width: 33rem;
  background: #fff;
  margin: 0 1rem;
  padding: 1rem;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
  min-width: 40%;
  border-radius: 0.5rem;
}
 
.star {
  font-size:3vh;
  cursor: pointer;
}
 
.one {
  color: rgb(255, 0, 0);
}
 
.two {
  color: rgb(255, 106, 0);
}
 
.three {
  color: rgb(251, 255, 120);
}
 
.four {
  color: rgb(255, 255, 0);
}
 
.five {
  color: rgb(24, 159, 14);
}

        </style>

</asp:Content>
