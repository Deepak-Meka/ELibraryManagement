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
    public partial class MemberManagement : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            
                checkByMemberId();
            

        }

        //Active Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (IdCheck())
            {
                if (TextBox7.Text == "active")
                {
                    Response.Write("<script>alert('ID already in active status');</script>");
                }
                else
                {
                    updateStatusById("active");
                    checkByMemberId();
                }
            }

            else
            {
                Response.Write("<script>alert('ID not exist');</script>");
            }
            
        }

        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (IdCheck())
            {
                if (TextBox7.Text == "pending")
                {
                    Response.Write("<script>alert('ID already in pending status');</script>");
                }
                else
                {
                    updateStatusById("pending");
                    checkByMemberId();
                }
               
            }
            else
            {
                Response.Write("<script>alert('ID not exist');</script>");
            }
        }

        //deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (IdCheck())
            {
                if(TextBox7.Text=="deactive")
                {
                    Response.Write("<script>alert('ID already in deactive status');</script>");
                }
                else {
                    updateStatusById("deactive");
                    checkByMemberId();
                }
               
            }

            else
            {
                Response.Write("<script>alert('ID not exist');</script>");
            }
        }
        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteButton();
        }

        //user defined functions
        bool IdCheck()
             {
                using (SqlConnection con = new SqlConnection(connection))
                {
                    string command = "select * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';";
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
        void checkByMemberId()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "select * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][0].ToString();
                    TextBox7.Text = dt.Rows[0][10].ToString();
                    TextBox8.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox9.Text = dt.Rows[0][4].ToString();
                    TextBox10.Text = dt.Rows[0][5].ToString();
                    TextBox11.Text = dt.Rows[0][6].ToString();
                    TextBox6.Text = dt.Rows[0][7].ToString();
                }
                else
                    Response.Write("<script>alert('ID not exist');</script>");
            }
        }

        void updateStatusById(string status)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "update member_master_tbl set account_status='" + status + "' where member_id='" + TextBox1.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Updated the Record Successful');</script>");
                
                GridView1.DataBind();
            }
        }

        void deleteButton()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "Delete from  member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'";
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
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";
        }

      
    }
}