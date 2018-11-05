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
    public partial class SetPaper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int questionId = int.Parse(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
            bool isSelected = (row.Cells[9].Controls[0] as CheckBox).Checked;
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("UPDATE Questions SET [Selected]='"+isSelected+ "' WHERE [QuestionId]=" + questionId , sqlConnection);
            try
            {
                sqlConnection.Open();
                command.ExecuteNonQuery();
            }
            finally
            {
                sqlConnection.Close();
                Response.Redirect("SetPaper.aspx");
            }
        }
    }
}