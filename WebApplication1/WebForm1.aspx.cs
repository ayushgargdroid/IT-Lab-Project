﻿using System;
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataReader reader = null;
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.Open();
            SqlCommand cmd = new SqlCommand("SELECT [Email_Id] from Professors where (Email_ID = ' " + TextBox2.Text + " ')";

            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("Select INTO Professors VALUES('" + id + "','" + name + "','" + designation + "','" + subject + "','" + pwd + "')", sqlConnection);
           
        }
    }
}