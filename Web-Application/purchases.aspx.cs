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
    public partial class purchases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Labelp1.Text = Session["Name"].ToString() + " " + Session["Surname"].ToString();
                Labelp2.Text = Session["salesPersonID"].ToString();
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
                string sqlstr = "select p.SaleID, p.date, p.PaymentMethod, s.Amount, p.PaymentPrice, s.ProductCode, p.Rating, p.CustomerID\r\nfrom Payment p inner join Sale s on s.SaleID =p.SaleID order by Date desc";

                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);

                GridViewpur1.DataSource = ds;
                GridViewpur1.DataBind();
                con.Close();
            }
        }
        protected void LogoutButton(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void UpdatePaymentPrice(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_UpdatePaymentPrice", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@criticalAmount", SqlDbType.Int).Value = int.Parse(TextBoxp1.Text);
            cmd.Parameters.Add("@criticalPrice", SqlDbType.Float).Value = float.Parse(TextBoxp2.Text);
            cmd.Parameters.Add("@discountAmount", SqlDbType.Float).Value = float.Parse(TextBoxp3.Text);
            cmd.Parameters.Add("@saleID", SqlDbType.NVarChar).Value = TextBoxp4.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void AddPayment(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_InsertSale", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@saleID", SqlDbType.NVarChar).Value = TextBoxp5.Text;
            cmd.Parameters.Add("@productCode", SqlDbType.NVarChar).Value = TextBoxp6.Text;
            cmd.Parameters.Add("@amount", SqlDbType.SmallInt).Value = int.Parse(TextBoxp7.Text);
            cmd.Parameters.Add("@paymentMethod", SqlDbType.NVarChar).Value = TextBoxp9.Text;
            cmd.Parameters.Add("@rating", SqlDbType.TinyInt).Value = int.Parse(TextBoxp10.Text);
            cmd.Parameters.Add("@cusomerID", SqlDbType.NVarChar).Value = TextBoxp11.Text;
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
            string sqlstr = "select p.SaleID, p.date, p.PaymentMethod, s.Amount, p.PaymentPrice, s.ProductCode, p.Rating, p.CustomerID\r\nfrom Payment p inner join Sale s on s.SaleID =p.SaleID order by Date desc";

            SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
            da.Fill(ds);

            GridViewpur1.DataSource = ds;
            GridViewpur1.DataBind();
            con.Close();
        }
    }
}