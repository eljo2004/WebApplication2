using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                cat();
                string s = "select * from Category_TB";
                DataSet data = con.Fnu_dataset(s);
                DropDownList1.DataSource = data;
                DropDownList1.DataTextField = "CatName";
                DropDownList1.DataValueField = "CatId";
                DropDownList1.DataBind();
               
            }
        }
        public void cat()
        {
            string d = "select * from Product_TB";
            DataSet dd = con.Fnu_dataset(d);
            GridView1.DataSource = dd;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string catid=DropDownList1.SelectedItem.Value.ToString();

            string i = "~/ProductImg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(i));

            string s = "insert into Product_TB values('"+TextBox1.Text+"',"+TextBox2.Text+","+TextBox3.Text+",'"+i+"','"+TextBox4.Text+"',"+catid+",'Available')";
            int ss=con.Fnu_NonQuery(s);
            Response.Redirect("Product.aspx");
           

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow gr = GridView1.Rows[e.NewSelectedIndex];
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int i = e.RowIndex;
            int getind = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string st = "delete from Product_TB where ProductId='" + getind + "'";
            con.Fnu_NonQuery(st);
            cat();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            cat();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            cat();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getind = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtdescription = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            TextBox txtstatus = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            string u = "update Product_TB set ProductDescription='" + txtdescription.Text + "' ,ProductStatus='" + txtstatus.Text + "'";
            con.Fnu_NonQuery(u);

            GridView1.EditIndex = -1;
            cat();
        }
    }
}