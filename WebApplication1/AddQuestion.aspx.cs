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
    public partial class Default : System.Web.UI.Page
    {

        string profID;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.CurrentAddQuestion = 1;
            if (Request.Cookies["UserName"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("SELECT ProfessorId from Professors WHERE Name='" + TextBox1.Text + "'", sqlConnection);
            try
            {
                sqlConnection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    profID = dataReader["ProfessorId"].ToString();
                }
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string question = TextBox1.Text;
            string c1 = TextBox2.Text;
            string c2 = TextBox3.Text;
            string c3 = TextBox4.Text;
            string c4 = TextBox5.Text;
            int ans = int.Parse(RadioButtonList1.SelectedValue);
            int marks = int.Parse(TextBox6.Text);
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("INSERT INTO Questions (ProfessorId,Question,Choice1,Choice2,Choice3,Choice4,CorrectAns,Marks,Selected) VALUES('" + profID + "','" + question + "','" + c1 + "','" + c2+"','" + c3 + "','" + c4 + "','" + ans + "','" +  marks + "','0')", sqlConnection);
            try
            {
                sqlConnection.Open();
                command.ExecuteNonQuery();
            }
            finally
            {
                sqlConnection.Close();
            }
            Response.Redirect("Home.aspx");
        }
    }
}