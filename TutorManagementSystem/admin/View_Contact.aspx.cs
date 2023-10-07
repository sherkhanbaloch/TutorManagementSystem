using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorManagementSystem.admin
{
    public partial class View_Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        public void BindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string qry = "select * from tbl_Contact";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label itemID = (Label)row.FindControl("lblID");

            string id = itemID.Text;

            SqlConnection con = new SqlConnection(cs);
            string qry = "delete from tbl_Contact where contactID = @id";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Delete Successful','Message Has Been Deleted.','success')", true);
                BindGridView();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Delete Failed.','Message Has Not Been Deleted.','error')", true);
            }

            con.Close();
        }
    }
}