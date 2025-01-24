using DAL1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
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

            SendEmail2("Eljohn kp", "eljokp7@gmail.com", "idbe vdqv shis gvod", "Eljo", "eljohnkp@gmail.com","Hai",txtdescription.Text);


            GridView1.EditIndex = -1;
            View();
        }


        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}