using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connect = new SqlConnection(connection))
            {
                string command = "SELECT * from admin_login_tbl where username= '" + TextBox1.Text.Trim() + "' And password= '" + TextBox2.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(command, connect);
                connect.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["password"] = dr.GetValue(1).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "admin";
                        Response.Write("<script>alert('Login Success');</script>");
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
        }
    }
}