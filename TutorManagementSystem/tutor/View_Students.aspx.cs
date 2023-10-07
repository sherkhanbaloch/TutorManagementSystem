using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorManagementSystem.tutor
{
    public partial class View_Students : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx");
            }

            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        public void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string qry = "select * from tbl_Students";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void btnSearch_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string qry = "select * from tbl_Students where (name like ('%" + searchTxt.Text + "%') or gender like ('%" + searchTxt.Text + "%') or country like ('%" + searchTxt.Text + "%') or city like ('%" + searchTxt.Text + "%') or class like ('%" + searchTxt.Text + "%') or subject like ('%" + searchTxt.Text + "%') or tuitiontype like ('%" + searchTxt.Text + "%'))";
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
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('No Record.','Student Not Found.','error')", true);
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }
        }
    }
}