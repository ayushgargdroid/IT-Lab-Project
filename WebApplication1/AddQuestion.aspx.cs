using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
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
            Response.Redirect("AddQuestion.aspx");
        }
    }
}