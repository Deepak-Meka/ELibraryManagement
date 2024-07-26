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
    public partial class UserLogin : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connect = new SqlConnection(connection))
            {
                string command = "SELECT * from member_master_tbl where member_id= '" + TextBox1.Text.Trim() + "' And password= '" + TextBox2.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(command,connect);
                connect.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["password"] = dr.GetValue(9).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }
    }
}