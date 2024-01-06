using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextileProject
{
    public partial class Default : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetButtonMessage();
            }
        }

        private void SetButtonMessage()
        {
            object user = Session["Name"];

            if (user != null)
            {
                ltUsername.Text = user.ToString().Trim();
                btnLogout.Visible = true;
                btnLogIn.Visible = false;
            }
            else
            {
                btnLogout.Visible = false;
                btnLogIn.Visible = true;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}