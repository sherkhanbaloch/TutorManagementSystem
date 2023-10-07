using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorManagementSystem
{
    public partial class Tutor_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TutorbtnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string qry = "select * from tbl_Tutors where userName = @username and password = @password";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@username", usernameTxt.Text);
            cmd.Parameters.AddWithValue("@password", passwordTxt.Text);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                Session["tutor_username"] = usernameTxt.Text;
                Response.Redirect("tutor/TutorDefault.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Login Failed', 'Invalid User Name or Password.', 'error')", true);
            }
            con.Close();
        }
    }
}