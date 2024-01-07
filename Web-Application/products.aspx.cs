using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Application
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Label_prod1.Text = Session["Name"].ToString() + " " + Session["Surname"].ToString();
                Label_prod2.Text = Session["salesPersonID"].ToString();
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
                string sqlstr = "select * from Product order by ProductName";

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

        protected void UpdateStockAmount(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_UpdateStockAmount", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ProductCode", SqlDbType.NVarChar).Value = TextBox11.Text;
            cmd.Parameters.Add("@NewStock",SqlDbType.Float ).Value = float.Parse(TextBox21.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void UpdatePrice(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_UpdatePrice", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@productCode", SqlDbType.NVarChar).Value = TextBox31.Text;
            cmd.Parameters.Add("@price", SqlDbType.Float).Value = float.Parse(TextBox41.Text);

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
            string sqlstr = "select * from Product order by ProductName";

            SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}