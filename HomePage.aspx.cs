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
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=AspProjectDB;Integrated Security=True;Encrypt=false;TrustServerCertificate=True");
            //SqlDataAdapter da = new SqlDataAdapter("select * from Product_Tb", con);
            //da.Fill(ds, "ds");
            ////ds.ReadXml(@"E:\Luminar\Xml\WindowsFormsUsingXml\WindowsFormsUsingXml\Trainnees.xml");
            //GridView1.DataSource = ds.Tables[0];
            //GridView1.DataBind();   


            //ds.WriteXml(@"E:\Luminar2\WebApplication2\XMLFile1.xml");

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Write("hbnjk");

        }
    }
}