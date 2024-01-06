using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;


namespace Web_Application
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1Click(object sender, EventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["conStr"].ToString();
            SqlConnection con = new SqlConnection(connectionString);

            string enteredUsername = TextBox1.Text.Trim();
            string enteredPassword = TextBox2.Text.Trim();

            try
            {
                con.Open();
                DataSet ds = new DataSet();
                string sqlstr = "select * from Salesperson where salesPersonID='" + enteredUsername + "'";
                SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
                da.Fill(ds);
                string password = ds.Tables[0].Rows[0]["password"].ToString();
                string fname = ds.Tables[0].Rows[0]["Name"].ToString();
                string lname = ds.Tables[0].Rows[0]["Surname"].ToString();
                con.Close();

                if (enteredPassword == password)
                {
                    Label1.Text = "Login successful!";
                    Session["Name"] = fname;
                    Session["Surname"] = lname;
                    Session["salesPersonID"] = enteredUsername;
                    if (enteredUsername == "s01") {

                        Response.Redirect("staffPerformance.aspx");
                    }
                    else
                    {

                        Response.Redirect("myCustomers.aspx");
                    }

                }
                else
                {
                    Label1.Text = "Invalid username or password.";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Error! " + enteredUsername + "-> " + enteredPassword;
            }
        }
    }
}
