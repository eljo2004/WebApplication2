using DAL1;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int regid = 0;
            string s = "select max(RegId) from Login_TB ";
            string ss = con.Fnu_scalar(s);
            if (ss == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(ss);
                regid = newregid + 1;
            }
            string i = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(i));
            int j = Convert.ToInt32(TextBox3.Text);
            string reg = "insert into UserRegistration_TB values(" + regid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" +j + "','" + TextBox4.Text + "','"+i+"','Available')";
            int reg1 = con.Fnu_NonQuery(reg);
            if (reg1 == 1)
            {
                string log = "insert into Login_TB values(" + regid + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','User')";
                int log1 = con.Fnu_NonQuery(log);
                Label1.Text = "Registration sucessfull";
                Response.Redirect("UserRegistration.aspx");
            }
            else
            {
                Label1.Text = "faild";
            }
        }        
    }
}