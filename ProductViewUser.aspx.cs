using DAL1;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ProductViewUser : System.Web.UI.Page
    {
        ConCl con=new ConCl();

        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary  d= new Dictionary();

            List<string> list = new List<string>(); 

            if (!IsPostBack)
            {
                string c = "select * from Product_TB where CatId='" + Session["Cid"] + "'";
                DataSet cc = con.Fnu_dataset(c);
                DataList1.DataSource = cc.Tables[0];
                DataList1.DataBind();

                string i = "select ProductImage from Product_TB where CatId=" + Session["Cid"] +"";
                SqlDataReader dr=con.Fnu_reader(i);
                while (dr.Read()) 
                {
                    string ii = dr["ProductImage"].ToString();
                    list.Add(ii);
                }

                Session["i"]=list;

                //List<string> myList = new List<string>();
                //myList = (List<string>)Session["i"];
                //foreach (var x in myList) 
                //{
                //    string y=x.ToString();
                //}




            }
        }
        

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            Session["Pid"] = i;
            Response.Redirect("AddCartUser.aspx");
        }
    }
}