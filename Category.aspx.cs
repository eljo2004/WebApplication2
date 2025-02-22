    using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                grid();  
                //string s = GridView1.SelectedRow.Cells[0].ToString();
            }

        }
        public void grid()
        {
            string d = "select * from Category_TB";
            DataSet dd = con.Fnu_dataset(d);
            GridView1.DataSource = dd;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "~/CategoryImg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s));
            string cat = "insert into Category_TB values('"+TextBox1.Text+"','"+s+"','"+TextBox3.Text+"','Available')";
            int cat1 = con.Fnu_NonQuery(cat);
            Response.Redirect("Category.aspx");
            //if (cat1 == 1) 
            //{
            //    Response.Write(cat1);
            //}
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow gr=GridView1.Rows[e.NewSelectedIndex];
            //Response.Redirect("Login.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i=e.RowIndex;
            int getind = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string st = "delete from Category_TB where CatId='"+getind+"'";
            con.Fnu_NonQuery(st);
            grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex=e.NewEditIndex;
            grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getind = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtdescription = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtstatus = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            string u = "update Category_TB set CatDescription='"+txtdescription.Text+"' ,CatStatus='"+txtstatus.Text+"' where CategoryId='"+getind+"'";
            con.Fnu_NonQuery(u);

            GridView1.EditIndex = -1;
            grid();


        }
    }
}