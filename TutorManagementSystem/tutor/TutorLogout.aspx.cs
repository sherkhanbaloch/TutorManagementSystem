using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorManagementSystem.tutor
{
    public partial class TutorLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] != null)
            {
                //Session.Abandon();
                Session["tutor_username"] = null;
                Response.Redirect("~/Tutor_Login.aspx");
            }
        }
    }
}