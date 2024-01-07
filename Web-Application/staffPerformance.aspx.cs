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
    public partial class staffPerformance : System.Web.UI.Page
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
                string sqlstr = "select st.Year, st.Month, s.salesPersonID, s.Name, s.Surname, s.Email,\ts.PhoneNumber, st.NumberOfCustomersServiced, st.Score, st.TotalRevenue\r\nfrom Salesperson s\r\n\tinner join StaffPerformance st on s.salesPersonID = st.SalesPersonID\r\norder by st.Year desc, st.Month desc, s.salesPersonID desc";

                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
        }

        protected void LogoutButton(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void ChangeScore(object sender, EventArgs e) 
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_UpdateScoreAccordingToSale", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@saleCount", SqlDbType.Int).Value = int.Parse(TextBox_SP3.Text); 
            cmd.Parameters.Add("@addScore", SqlDbType.Float).Value = float.Parse(TextBox_SP2.Text) ;
            cmd.Parameters.Add("@salesPersonID", SqlDbType.NVarChar).Value = TextBox_SP1.Text;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void UpdateTable(object sender, EventArgs e)
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
            string sqlstr = "select st.Year, st.Month, s.salesPersonID, s.Name, s.Surname, s.Email,\ts.PhoneNumber, st.NumberOfCustomersServiced, st.Score, st.TotalRevenue\r\nfrom Salesperson s\r\n\tinner join StaffPerformance st on s.salesPersonID = st.SalesPersonID\r\norder by st.Year desc, st.Month desc, s.salesPersonID desc";

            SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
 }
