using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Cart : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cart();   
            }

        }
        public void cart()
        {
            string s = "select c.CartId, p.ProductName,p.Price,p.ProductImage,p.ProductDescription,c.Quantity,c.SubTotal from Product_TB p,Cart_TB c where c.RegId='" + Session["Rid"] + "' and c.ProductId=p.ProductId";
            DataSet ds = con.Fnu_dataset(s);
            //imageButton1.ImageUrl = ds.Tables[0].Rows[0][2].ToString();
            DataList1.DataSource = ds.Tables[0];

            DataList1.DataBind();
            
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Label qty = (Label)e.Item.FindControl("Label8");
            int q = Convert.ToInt32(qty.Text);

            Label price = (Label)e.Item.FindControl("Label6");
            int pp = Convert.ToInt32(price.Text);

            Label s = (Label)e.Item.FindControl("Label10");
            int ss = Convert.ToInt32(s.Text);

            if (e.CommandName == "Delete")
            {
                int i = Convert.ToInt32(e.CommandArgument);
                string d = "delete from Cart_TB where CartId='" + i + "'";
                int dd = con.Fnu_NonQuery(d);
                cart();
            }
            else if(e.CommandName=="Add" )
            {
                int a = q + 1;
                qty.Text=a.ToString();
                ss += pp;
                s.Text= ss.ToString();
                
            }
            else if (e.CommandName == "sub")
            {if (q != 1)
                {
                    int a = q - 1;
                    qty.Text = a.ToString();
                    ss -= pp;
                    s.Text = ss.ToString();
                }

            }
            else if (e.CommandName == "Edit")
            {
                int i = Convert.ToInt32(e.CommandArgument);

              
                int t = pp * q;
                string d = "update Cart_TB set Quantity='" + qty.Text + "' ,SubTotal='"+t+"' where CartId='" + i + "'";
                int tt = con.Fnu_NonQuery(d);
                cart();
            } 

        }



        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    //string s="select u.UserName,u.UserEmail,u.UserPhone,u.UserAddress,c.Quantity,c."
        //}

        protected void Button5_Click1(object sender, EventArgs e)
        {
            string dt = DateTime.Now.ToString("yyyy-MM-dd");
            string s = "select sum(SubTotal) from Cart_TB where RegId='" + Session["Rid"] +"'";
            string tot= con.Fnu_scalar(s);
            Session["Gtotal"]= tot; 

            string b = "insert into Bill_TB values(" + tot + ",'"+dt+"'," + Session["Rid"] +","+tot+",'onprogress')";
            int bb = con.Fnu_NonQuery(b);

            string d = "delete from Cart_TB where RegId='" + Session["Rid"] + "'";

            Response.Redirect("Bill.aspx");
        }

      
    }
}