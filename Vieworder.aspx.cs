using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Vieworder : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                string d = "select UserName,UserAddress,DelStatus,Date from Delivery_TB where UserId='" + Session["Rid"] + "'";
                SqlDataReader dr=con.Fnu_reader(d);
                while (dr.Read()) 
                {
                    Label5.Text = dr["Username"].ToString();
                    Label6.Text = dr["UserAddress"].ToString();
                    Label7.Text = dr["DelStatus"].ToString();
                    Label8.Text = dr["Date"].ToString();
                }

                string c = "select p.ProductName,p.ProductImage,p.Price,p.ProductDescription,o.Quantity from Product_TB p,Order_TB o where RegId='" + Session["Rid"] +"' and o.ProductId=p.ProductId and OrderStatus='Delivered'";
                DataSet cc = con.Fnu_dataset(c);
                DataList1.DataSource = cc.Tables[0];
                DataList1.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dt = DateTime.Now.ToString("yyyy-MM-dd");

            string f = "insert into Feedback_TB values('" + dt + "','" + TextBox1.Text + "'," + Session["Rid"] +",'Nil','Pending')";
            con.Fnu_NonQuery(f);    
            TextBox1 .Text = "";
        }
    }
}