using DAL1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ConCl con =new ConCl();
        protected void Button1_Click(object sender, EventArgs e)
        {

            string log = "select count(LoginId) from Login_TB where Username='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
            string log1=con.Fnu_scalar(log);
            if (log1 == "1")
            {
                string c = "select UserType from Login_TB where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string cc = con.Fnu_scalar(c);
                if (cc == "Admin")
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {

                    string r = "select RegId from Login_TB where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                    string rr = con.Fnu_scalar(r);
                    Session["Rid"]=rr;

                    TextBox1.Text = "";
                    TextBox2.Text = "";



                    Response.Redirect("UserHome.aspx");
                }
               
            }
            else 
            { 
                Label1.Text="Invalid Username or Password"; 
            }
        }
    }
}