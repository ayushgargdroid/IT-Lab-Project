using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public int CurrentHome
        {
            get
            {
                return 0;
            }
            set
            {
                if (value == 1)
                {
                    HomeDiv.Attributes.Add("class", "active");
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
                    SetPaperDev.Attributes.Add("class", "active");
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void logout(object sender, EventArgs e)
        {
            Response.Cookies["UserName"].Expires= DateTime.Now.AddDays(-1);
            Response.Redirect("SignIn.aspx");
        }
    }
}