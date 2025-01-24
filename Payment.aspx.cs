using DAL1;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Payment : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        PidCls pidcls=new PidCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<PidCls> list = new List<PidCls>();
            string name="",address="";
            ServiceReference5.ServiceClient service1 = new ServiceReference5.ServiceClient();
            int i = service1.Balance(TextBox1.Text, Session["Rid"].ToString());
            if (i == 1)
            {


                string Qdd = "select ProductId,Quantity from Order_TB where RegId=" + Session["Rid"] +" and OrderStatus='Pending' ";
                SqlDataReader Qd = con.Fnu_reader(Qdd);
                while (Qd.Read())
                {
                    list.Add(
                    new PidCls
                    {
                        ID = Convert.ToInt32(Qd["ProductId"]),
                        Qty = Convert.ToInt32(Qd["Quantity"])
                    });
                }

                foreach (var x in list) 
                {
                    string Q = "select stock from Product_Tb where ProductId ="+x.ID+"";
                    string qq=con.Fnu_scalar(Q);

                    int qqq=Convert.ToInt32(qq)-x.Qty;

                    string ud = "update Product_TB set Stock=" + qqq + " where ProductId=" + x.ID + "";
                    con.Fnu_NonQuery(ud);   

                }



                string u = "update Order_TB set OrderStatus='Delivered' where RegId='" + Session["Rid"] +"' and OrderStatus='Pending'";
                con.Fnu_NonQuery(u);


                  
                
                    
                
                


                string d="select UserName,UserAddress from UserRegistration_TB where UserId=" + Session["Rid"] +"";
                SqlDataReader dd=con.Fnu_reader(d);
                while (dd.Read())
                {
                    name = dd["UserName"].ToString();
                    address = dd["Useraddress"].ToString();
                }

                string dt = DateTime.Now.AddDays(2).ToString("yyyy-MM-dd");
                string di = "insert into Delivery_TB values(" + Session["Rid"] +",'"+name+"','"+address+"','Shipped','"+dt+"')";
                con.Fnu_NonQuery(di);


                string y = "Your product shipped,Delivery on " + dt + "";

                SendEmail2("Eljohn kp", "eljokp7@gmail.com", "idbe vdqv shis gvod", "Eljo", "eljohnkp@gmail.com", "Eyfer", y);


                Response.Redirect("UserHome.aspx");
            }


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