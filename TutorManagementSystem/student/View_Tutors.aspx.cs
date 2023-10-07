using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorManagementSystem.student
{
    public partial class View_Tutors : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student_username"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }

            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        public void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string qry = "select * from tbl_Tutors";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void btnSearch_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string qry = "select * from tbl_Tutors where (name like ('%" + searchTxt.Text + "%') or gender like ('%" + searchTxt.Text + "%') or country like ('%" + searchTxt.Text + "%') or city like ('%" + searchTxt.Text + "%') or qualification like ('%" + searchTxt.Text + "%') or experience like ('%" + searchTxt.Text + "%'))";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('No Record.','Tutor Not Found.','error')", true);
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }
        }
    }
}