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
    public partial class Tutor_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountries();
            }
        }

        public void ResetContact()
        {
            nameTxt.Text = "";
            surnameTxt.Text = "";
            genderDDL.ClearSelection();
            ageTxt.Text = "";
            emailTxt.Text = "";
            maritalDDL.ClearSelection();
            countryDDL.ClearSelection();
            cityDDL.ClearSelection();
            addressTxt.Text = "";
            qualificationDDL.ClearSelection();
            degreeTxt.Text = "";
            experienceDDL.ClearSelection();
            contactTxt.Text = "";
            usernameTxt.Text = "";
            passwordTxt.Text = "";
            confirmpasswordTxt.Text = "";
        }

        public void LoadCountries()
        {
            SqlConnection con = new SqlConnection(cs);

            string qry = "select * from tbl_Countries";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            countryDDL.DataSource = dt;
            countryDDL.DataTextField = "countryName";
            countryDDL.DataValueField = "countryID";
            countryDDL.DataBind();

            ListItem li = new ListItem("Select Country", "-1");
            li.Selected = true;
            countryDDL.Items.Insert(0, li);
        }

        public void LoadCities()
        {
            SqlConnection con = new SqlConnection(cs);

            string qry = "select * from tbl_Cities where countryID = @id";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            da.SelectCommand.Parameters.AddWithValue("@id", countryDDL.SelectedValue);
            DataTable dt = new DataTable();
            da.Fill(dt);

            cityDDL.DataSource = dt;
            cityDDL.DataTextField = "cityName";
            cityDDL.DataValueField = "cityID";
            cityDDL.DataBind();
        }

        protected void btnTutorSignup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string qry = "insert into tbl_Tutors values (@name, @surname, @gender, @age, @email, @status, @country, @city, @address, @qualification, @degree, @experience, @contact, @username, @password)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@name", nameTxt.Text);
                cmd.Parameters.AddWithValue("@surname", surnameTxt.Text);
                cmd.Parameters.AddWithValue("@gender", genderDDL.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(ageTxt.Text));
                cmd.Parameters.AddWithValue("@email", emailTxt.Text);
                cmd.Parameters.AddWithValue("@status", maritalDDL.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", countryDDL.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", cityDDL.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@address", addressTxt.Text);
                cmd.Parameters.AddWithValue("@qualification", qualificationDDL.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", degreeTxt.Text);
                cmd.Parameters.AddWithValue("@experience", experienceDDL.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contact", contactTxt.Text);
                cmd.Parameters.AddWithValue("@username", usernameTxt.Text);
                cmd.Parameters.AddWithValue("@password", passwordTxt.Text);

                con.Open();
                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Sign Up Successful','Record Has Been Inserted.','success')", true);
                    ResetContact();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Sign Up Successful','Record Has Not Been Inserted.','error')", true);
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Error','User Name Already Exits. Try Another.','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','" + ex.Message + "','error')", true);
                }
            }
            finally
            {
                con.Close();
            }
        }

        protected void countryDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadCities();
        }
    }
}