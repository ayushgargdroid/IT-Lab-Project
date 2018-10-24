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
            if (!IsPostBack)
            {
                ListBox1.Items.Add(new ListItem("2", "2"));
                ListBox1.Items.Add(new ListItem("3", "3"));
                ListBox1.Items.Add(new ListItem("4", "4"));
                ListBox1.Items.Add(new ListItem("5", "5"));
                ListBox1.Items.Add(new ListItem("6", "6"));
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}