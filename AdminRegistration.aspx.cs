using DAL1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int regid = 0;
            string s = "select max(RegId) from Login_TB ";
            string ss=con.Fnu_scalar(s);
            if (ss =="")
            {
                regid = 1;
            }
            else
            {
                int newregid=Convert.ToInt32(ss);
                regid = newregid + 1;
            }
            string reg="insert into Admin_TB values("+regid+",'"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
            int reg1 = con.Fnu_NonQuery(reg);
            if(reg1 == 1)
            {
                string log = "insert into Login_TB values("+regid+",'"+TextBox6.Text+"','"+TextBox7.Text+"','Admin')";
                int log1 = con.Fnu_NonQuery(log);
                Label1.Text = "Registration sucessfull";
                Response.Redirect("AdminRegistration.aspx");
            }
            else
            {
                Label1.Text = "faild";
            }
        }

        
    }
}