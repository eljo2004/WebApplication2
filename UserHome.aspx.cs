﻿using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class UserHome : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        List<string> list = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                if (Session["Rid"] != "")
                {
                    string s = "select * from Category_TB";
                    DataSet ds = con.Fnu_dataset(s);
                    //imageButton1.ImageUrl = ds.Tables[0].Rows[0][2].ToString();
                    DataList1.DataSource = ds.Tables[0];

                    DataList1.DataBind();

                    string i = "select CatImage from Category_TB ";
                    SqlDataReader dr = con.Fnu_reader(i);
                    while (dr.Read())
                    {
                        string ii = dr["CatImage"].ToString();
                        list.Add(ii);
                    }

                    Session["y"] = list;

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
              
                
            }
           
        }
        
        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int i=Convert.ToInt32(e.CommandArgument);
            Session["Cid"] = i;
            Response.Redirect("ProductViewUser.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Rid"]="";
            FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ss = Request.Form["search"].ToString();

            string c = "select * from Category_TB where CatName='" + ss + "'";
            DataSet dd=con.Fnu_dataset(c);  
            DataList1.DataSource=dd.Tables[0];
            DataList1.DataBind();

        }
    }
}