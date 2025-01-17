using DAL1;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Payment : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name="",address="";
            ServiceReference5.ServiceClient service1 = new ServiceReference5.ServiceClient();
            int i = service1.Balance(TextBox1.Text, Session["Rid"].ToString());
            if (i == 1)
            {
                string u = "update Order_TB set OrderStatus='Delivered' where RegId='" + Session["Rid"] +"'";
                con.Fnu_NonQuery(u);


                string d="select UserName,UserAddress from UserRegistration_TB where UserId=" + Session["Rid"] +"";
                SqlDataReader dd=con.Fnu_reader(d);
                while (dd.Read())
                {
                    name = dd["UserName"].ToString();
                    address = dd["Useraddress"].ToString();
                }

                string dt = DateTime.Now.AddDays(2).ToString("yyyy-MM-dd");
                string di = "insert into Delivery_TB values(" + Session["Rid"] +",'"+name+"','"+address+"','Shipped','"+dt+"')";
                con.Fnu_NonQuery(di);
                Response.Redirect("UserHome.aspx");

            }
        }
    }
}