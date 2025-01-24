using DAL1;
using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CartUser : System.Web.UI.Page
    {
        ConCl con= new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Product_TB where ProductId='" + Session["Pid"] +"'";
                 SqlDataReader ss= con.Fnu_reader(s);
                while (ss.Read()) 
                {
                    Image1.ImageUrl = ss["ProductImage"].ToString();
                    Label5.Text = ss["ProductName"].ToString();
                    Label6.Text = ss["Price"].ToString();
                    Label7.Text= ss["ProductDescription"].ToString();
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sub = 0;
            string p = "select Price from Product_TB where ProductId='" + Session["Pid"] + "'";
            string pp=con.Fnu_scalar(p);

                sub= Convert.ToInt32(pp) * Convert.ToInt32(Label8.Text);

            string c = "insert into Cart_TB values(" + Session["Rid"] + "," + Session["Pid"] + ","+Label8.Text+","+sub+") ";
            con.Fnu_NonQuery(c);    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int q= Convert.ToInt32(Label8.Text);
            q = q + 1;
            Label8.Text = q.ToString(); 

            //int p=Convert.ToInt32(Label6.Text);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int q = Convert.ToInt32(Label8.Text);
            if (q != 1)
            {
                q = q - 1;
                Label8.Text = q.ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int sub = 0;
            string p = "select Price from Product_TB where ProductId='" + Session["Pid"] + "'";
            string pp = con.Fnu_scalar(p);

            sub = Convert.ToInt32(pp) * Convert.ToInt32(Label8.Text);

            string c = "insert into Cart_TB values(" + Session["Rid"] + "," + Session["Pid"] + "," + Label8.Text + "," + sub + ") ";
            con.Fnu_NonQuery(c);

            Response.Redirect("Cart.aspx");
        }
    }
}