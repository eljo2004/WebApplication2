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
    public partial class ProductViewUser : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string c = "select * from Product_TB where CatId='" + Session["Cid"] + "'";
                DataSet cc = con.Fnu_dataset(c);
                DataList1.DataSource = cc.Tables[0];
                DataList1.DataBind();
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