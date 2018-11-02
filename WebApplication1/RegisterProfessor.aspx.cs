using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class RegisterProfessor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.CurrentRegisterProfessor = 1;
            if (Request.Cookies["UserName"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
            else{
                int exit = 1;
                SqlConnection sqlConnection = new SqlConnection();
                sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlCommand command = new SqlCommand("SELECT Designation from Professors where Name='" + Request.Cookies["UserName"].Value + "'", sqlConnection);
                try
                {
                    sqlConnection.Open();
                    SqlDataReader dataReader = command.ExecuteReader();
                    while (dataReader.Read())
                    {
                        if (dataReader["Designation"].ToString() == "Admin")
                        {
                            exit = 0;
                        }
                    }
                }
                finally
                {
                    sqlConnection.Close();
                    if (exit == 1)
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox1.Text);
            string name = TextBox2.Text;
            string subject = TextBox3.Text;
            string pwd = TextBox4.Text;
            string designation = DropDownList1.SelectedValue;
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("INSERT INTO Professors VALUES('" + id + "','" + name + "','" + designation + "','" + subject + "','" + pwd + "')", sqlConnection);
            try
            {
                sqlConnection.Open();
                command.ExecuteNonQuery();
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}