using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberID())
            {
                Response.Write("<script>alert('UserId already Exist.try with new ID');</script>");
            }

            else
            {
                Signup();
            }

            ReloadPage();

        }

        bool checkMemberID()
        {
                using(SqlConnection con = new SqlConnection(connection))
                {
                    string command = "select * from member_master_tbl where member_id='" + TextBox8.Text.Trim() + "';";
                    SqlCommand cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                        return false;
                }
        }

        void Signup()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "Insert into member_master_tbl values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.Parameters.Add("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.Add("@dob", TextBox2.Text.Trim());
                cmd.Parameters.Add("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.Add("@email", TextBox4.Text.Trim());
                cmd.Parameters.Add("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.Add("@city", TextBox6.Text.Trim());
                cmd.Parameters.Add("@pincode", TextBox5.Text.Trim());
                cmd.Parameters.Add("@full_address", TextBox7.Text.Trim());
                cmd.Parameters.Add("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.Add("@password", TextBox9.Text.Trim());
                cmd.Parameters.Add("@account_status", "Pending");

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Sign Up Successful');</script>"); 
            }
        }

        void ReloadPage()
        {
            
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
            TextBox5.Text = String.Empty;
            TextBox6.Text = String.Empty;
            TextBox7.Text = String.Empty;
            TextBox8.Text = String.Empty;
            TextBox9.Text = String.Empty;
            DropDownList1.SelectedIndex = -1;
        }
    }
}