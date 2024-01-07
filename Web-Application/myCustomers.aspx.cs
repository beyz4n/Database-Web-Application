using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Application
{
    public partial class myCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                Label1.Text = Session["Name"].ToString() + " " + Session["Surname"].ToString();
                Label2.Text = Session["salesPersonID"].ToString();

                string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

                SqlConnection con = new SqlConnection(connectionString);

                try
                {
                    con.Open();
                }
                catch (Exception)
                {
                    con.Close();
                    return;
                    throw;
                }


                DataSet ds = new DataSet();
                string sqlstr = "select * from Customer where SalespersonID='" + Session["salesPersonID"] + "' order by Name";

                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
        }

        protected void DisplayTop10Customer(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);

            try
            {
                con.Open();
            }
            catch (Exception)
            {
                con.Close();
                return;
                throw;
            }


            DataSet ds = new DataSet();
            string sqlstr = "select top 10 * from Customer order by Name";

            SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void LogoutButton(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void GetCustomers(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);

            try
            {
                con.Open();
            }
            catch (Exception)
            {
                con.Close();
                return;
                throw;
            }


            DataSet ds = new DataSet();
            string sqlstr = "select * from Customer where SalespersonID='" + Session["salesPersonID"] + "' order by Name";

            SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}