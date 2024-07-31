using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["username"].ToString()==""|| Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired.Login Again')</script>");
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                getUserBookDetails();
               
                if (!IsPostBack)
                {
                    getUserPersonalDetails();
                }
            }

        }
        //update button
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired.Login Again')</script>");
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();
            }
        }

        //userdefined functions
        void updateUserPersonalDetails()
        {
            string password = "";
            if (TextBox10.Text == "")
            {
                password = TextBox9.Text.ToString().Trim();
            }
            else
            {
                password = TextBox10.Text.ToString().Trim();
            }
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                string command = "Update member_master_tbl set full_name=@full_name, dob=@dob, contact_no=@contact_no, email=@email, state=@state, city=@city, pincode=@pincode, full_address=@full_address, password=@password, account_status=@account_status where member_id='" + Session["username"] + "'";
                SqlCommand cmd = new SqlCommand(command, con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "pending");
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonalDetails();
                    getUserBookDetails();
                }
            }
        }
        void getUserPersonalDetails()
        {
            using(SqlConnection con=new SqlConnection(connection))
            {
                con.Open();
                string command = "Select * from member_master_tbl where member_id='" + Session["username"] + "'";
                SqlCommand cmd = new SqlCommand(command, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["full_name"].ToString().Trim();
                TextBox2.Text = dt.Rows[0]["dob"].ToString().Trim();
                TextBox3.Text = dt.Rows[0]["contact_no"].ToString().Trim();
                TextBox4.Text = dt.Rows[0]["email"].ToString().Trim();
                DropDownList1.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
                TextBox6.Text = dt.Rows[0]["city"].ToString().Trim();
                TextBox5.Text = dt.Rows[0]["pincode"].ToString().Trim();
                TextBox7.Text = dt.Rows[0]["full_address"].ToString().Trim();
                TextBox8.Text = dt.Rows[0]["member_id"].ToString().Trim();
                TextBox9.Text = dt.Rows[0]["password"].ToString().Trim();

                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-success");
                }
                else if(dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-warning");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-danger");
                }
            }
        }

        void getUserBookDetails()
        {
            using(SqlConnection con=new SqlConnection(connection))
            {
                con.Open();
                string command = "select * from book_issue_tbl where member_id='" + Session["username"] + "' ";
                SqlCommand cmd = new SqlCommand(command,con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check the date and time condition 
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}