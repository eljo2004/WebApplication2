﻿using DAL1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
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