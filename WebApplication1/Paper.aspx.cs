using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Paper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] == null)
            {
                Response.Redirect("SignIn.aspx");
                return;
            }
            if (!IsPostBack)
            {
                SqlConnection sqlConnection = new SqlConnection();
                sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlCommand command = new SqlCommand("SELECT DISTINCT Subject from Professors", sqlConnection);
                try
                {
                    sqlConnection.Open();
                    SqlDataReader dataReader = command.ExecuteReader();
                    while (dataReader.Read())
                    {
                        ListBox1.Items.Add(new ListItem(dataReader["Subject"].ToString(), dataReader["Subject"].ToString()));
                    }
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }
    }
}