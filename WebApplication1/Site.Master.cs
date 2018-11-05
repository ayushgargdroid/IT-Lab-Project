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
    public partial class Site : System.Web.UI.MasterPage
    {
        public int CurrentPaper
        {
            get
            {
                return 0;
            }
            set
            {
                if (value == 1)
                {
                    PaperDiv.Attributes.Add("class", "active");
                }
            }
        }
        public int CurrentAddQuestion
        {
            get
            {
                return 0;
            }
            set
            {
                if (value == 1)
                {
                    AddQuestionDiv.Attributes.Add("class", "active");
                }
            }
        }
        public int CurrentRegisterProfessor
        {
            get
            {
                return 0;
            }
            set
            {
                if (value == 1)
                {
                    RegisterProfessorDiv.Attributes.Add("class", "active");
                }
            }
        }
        public int CurrentSetPaper
        {
            get
            {
                return 0;
            }
            set
            {
                if (value == 1)
                {
                    SetPaperDiv.Attributes.Add("class", "active");
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] == null)
            {
                PaperDiv.Attributes.Add("class", "text-hide");
                RegisterProfessorDiv.Attributes.Add("class", "text-hide");
                AddQuestionDiv.Attributes.Add("class", "text-hide");
                SetPaperDiv.Attributes.Add("class", "text-hide");
                LogOutDiv.Attributes.Add("class", "text-hide");
                return;
            }
            string designation="";
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source=dellmac.database.windows.net;Initial Catalog=IT Lab Project;User ID=ayushgarg;Password=@dell123;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlCommand command = new SqlCommand("SELECT Designation from Professors WHERE Name='" + Request.Cookies["UserName"].Value + "'", sqlConnection);
            try
            {
                sqlConnection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    designation = dataReader["Designation"].ToString();
                }
            }
            finally
            {
                sqlConnection.Close();
            }
            if (designation != "Admin")
            {
                RegisterProfessorDiv.Attributes.Add("class", "text-hide");
                PaperDiv.Attributes.Add("class", "text-hide");
            }
            if(designation!= "Faculty In-Charge")
            {
                SetPaperDiv.Attributes.Add("class", "text-hide");
            }
        }
        protected void logout(object sender, EventArgs e)
        {
            Response.Cookies["UserName"].Expires= DateTime.Now.AddDays(-1);
            Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["UserSubject"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("SignIn.aspx");
        }
    }
}