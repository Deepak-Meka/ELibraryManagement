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
    public partial class PublisherManagement : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        //user defined functions
        bool chechIdExist()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "select * from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "';";
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


        void addButton()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "Insert into publisher_master_tbl values(@publisher_id,@publisher_name)";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.Parameters.Add("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.Add("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Author Added Successful');</script>");
                clearForm();
                GridView1.DataBind();
            }
        }

        void updateButton()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "update publisher_master_tbl set publisher_name=@publisher_name where publisher_id='" + TextBox1.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();

                cmd.Parameters.Add("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Updated the Record Successful');</script>");
                clearForm();
                GridView1.DataBind();
            }
        }

        void deleteButton()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "Delete from  publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();



                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Deleted the Record Successful');</script>");
                clearForm();
                GridView1.DataBind();
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        void goButton()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "select * from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "';";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                    Response.Write("<script>alert('ID not exist');</script>");
            }
        }

        //add button
        protected void Button5_Click1(object sender, EventArgs e)
        {
            if (chechIdExist())
            {
                Response.Write("<script>alert('AuthorID already exist')</script>");
            }
            else
            {
                addButton();
            }
        }

        //update button
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (chechIdExist())
            {
                updateButton();
            }
            else
            {
                Response.Write("<script>alert('AuthorID not exist ')</script>");
            }
        }

        //delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (chechIdExist())
            {
                deleteButton();
            }
            else
            {
                Response.Write("<script>alert('AuthorID not exist')</script>");
            }
        }
        //go button
        protected void Button1_Click1(object sender, EventArgs e)
        {
            goButton();
        }
    }
}