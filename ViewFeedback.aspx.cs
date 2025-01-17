using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ViewFeedback : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                View();
            }
        }
        public void View()
        {
            string d = "select * from Feedback_TB";
            DataSet dd = con.Fnu_dataset(d);
            GridView1.DataSource = dd;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getind = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string st = "delete from Feedback_TB where FeedbackId='" + getind + "'";
            con.Fnu_NonQuery(st);
            View();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            View();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            View();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getind = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtdescription = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            string u = "update Feedback_TB set Replay='" + txtdescription.Text + "' ,FeedbackStatus='Done' where FeedbackId='"+getind+"'";
            con.Fnu_NonQuery(u);

            GridView1.EditIndex = -1;
            View();
        }
    }
}