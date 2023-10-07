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
    public partial class contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ResetContact()
        {
            nameTxt.Text = "";
            emailTxt.Text = "";
            subjectDDL.ClearSelection();
            messageTxt.Text = "";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "sp_InsertContact";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", nameTxt.Text);
            cmd.Parameters.AddWithValue("@email", emailTxt.Text);
            cmd.Parameters.AddWithValue("@subject", subjectDDL.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", messageTxt.Text);

            con.Open();
            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact();", true);
                ResetContact();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact();", true);
            }
            con.Close();
        }
    }
}