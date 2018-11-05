using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("SELECT Subject,ProfessorID,Password from Professors WHERE Name='" + TextBox1.Text+"'", sqlConnection);
            try
            {
                sqlConnection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader["Password"].ToString() == TextBox2.Text)
                    {
                        Response.Cookies["UserName"].Value = TextBox1.Text;
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddHours(1);
                        Response.Cookies["UserId"].Value = dataReader["ProfessorID"].ToString();
                        Response.Cookies["UserId"].Expires = DateTime.Now.AddHours(1);
                        Response.Cookies["UserSubject"].Value = dataReader["Subject"].ToString();
                        Response.Cookies["UserSubject"].Expires = DateTime.Now.AddHours(1);
                        string site = "Home.aspx?name="+TextBox1.Text;
                        Response.Redirect(site);
                    }
                }
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}