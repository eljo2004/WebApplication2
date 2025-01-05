using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Bill : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string p = "select UserName,UserEmail,UserPhone,UserAddress from UserRegistration_TB where UserId='" + Session["Rid"] + "'";
                SqlDataReader pp=con.Fnu_reader(p);
                while (pp.Read())
                {
                    Label2.Text = pp["UserName"].ToString();
                    Label4.Text = pp["UserAddress"].ToString();
                    Label6.Text = pp["UserPhone"].ToString();
                    Label8.Text = pp["UserEmail"].ToString();
                }
                string d = "select c.CartId, p.ProductName,p.Price,c.Quantity,c.SubTotal from Product_TB p,Cart_TB c where c.RegId='" + Session["Rid"] + "' and c.ProductId=p.ProductId";
                DataSet dd=con.Fnu_dataset(d);
                GridView1.DataSource= dd;   
                GridView1.DataBind();

                Label11.Text = Session["Gtotal"].ToString() ;

            }
        }
    }
}