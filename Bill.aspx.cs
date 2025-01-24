using DAL1;
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
    public partial class Bill : System.Web.UI.Page
    {
        ConCl con=new ConCl();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                string dis = "select count(BillId) from Bill_TB where UserId='" + Session["Rid"] + "' and BillStatus='Pending'";
                string cdis = con.Fnu_scalar(dis); 
                if (cdis != "0")
                {
                    string dt = DateTime.Now.ToString("yyyy-MM-dd");
                    string s = "select sum(Price) from Order_TB where RegId='" + Session["Rid"] + "' and OrderStatus='Pending'";
                    string tot = con.Fnu_scalar(s);

                    string p = "select u.UserName,u.UserEmail,u.UserPhone,u.UserAddress from UserRegistration_TB u,Bill_TB b where u.UserId='" + Session["Rid"] + "' and u.UserId=b.UserID";
                    SqlDataReader pp = con.Fnu_reader(p);
                    while (pp.Read())
                    {
                        Label2.Text = pp["UserName"].ToString();
                        Label4.Text = pp["UserAddress"].ToString();
                        Label6.Text = pp["UserPhone"].ToString();
                        Label8.Text = pp["UserEmail"].ToString();
                        //Session["id"] = pp["GrandTotal"].ToString();
                    }

                    string o = "select ProductName,Quantity,Price from Order_Tb where RegId='" + Session["Rid"] + "' and OrderStatus='Pending'";
                    DataSet dd = con.Fnu_dataset(o);

                    GridView1.DataSource = dd.Tables[0];
                    GridView1.DataBind();


                    Label11.Text = tot.ToString();
                }
                else
                {
                    Response.Redirect("UserHome.aspx");
                }



                

            }
        }

       
        protected void Button2_Click1(object sender, EventArgs e)
        {
            string a = "insert into Account_TB values(" + TextBox1.Text + "," + Session["Rid"] +",'"+TextBox2.Text+"',"+TextBox3.Text+")";
            con.Fnu_NonQuery(a);

            //Response.Redirect("Bill.aspx");


            //string c = "select count(AccNo) from Account_TB where UserId='" + Session["Rid"] + "'";
            //string cc=con.Fnu_scalar(c);
            //if(cc == "1")
            //{
            //    Response.Redirect("Payment.aspx");
            //}
            //else
            //{
            //    Response.Redirect("Bill.aspx/#popup");

            //}

            //ServiceReference3.ServiceClient service1=new ServiceReference3.ServiceClient();
            //int i = service1.Balance(TextBox1.Text, Session["Rid"].ToString());
            //if (i == 1)
            //{
            //    Response.Write("done");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            string c = "select count(AccNo) from Account_TB where UserId='" + Session["Rid"] + "'";
            string cc = con.Fnu_scalar(c);
            if (cc =="0")
            {
                Response.Redirect("Bill.aspx#popup");

            }
            else
            {
                Response.Redirect("Payment.aspx");

                //string a = "insert into Account_TB values(" + TextBox1.Text + "," + Session["Rid"] + ",'" + TextBox2.Text + "'," + TextBox3.Text + ")";
                //con.Fnu_NonQuery(a);

            }

           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string d="delete from Bill_TB where UserId=" + Session["Rid"] +"  and  BillStatus='Pending'";
            con.Fnu_NonQuery(d);
            string dd = "delete from Order_TB where RegId=" + Session["Rid"] +" and OrderStatus='Pending'";
            con.Fnu_NonQuery(dd);
            Response.Redirect("Bill.aspx");
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("EnterAccount.aspx");
        //}
    }
}