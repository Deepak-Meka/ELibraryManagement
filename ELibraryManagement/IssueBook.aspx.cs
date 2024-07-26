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
    public partial class IssueBook : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            GridView1.DataBind();
        }
        //go button
        protected void Button5_Click(object sender, EventArgs e)
        {
            getNames();
        }
        //Issue Button
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {
                if (checkIfEntryExist())
                {
                    Response.Write("<script>alert('Book already issue with the same ID');</script>");
                }
                else
                {
                    issueBooks();
                    
                }    
            }
            else
            {
                Response.Write("<script>alert('Inavlid ID');</script>");
            }
            clearForm();
        }
        //Return Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {
                returnBook();
                clearForm();
            }
        }

        //user defined funtions

        bool checkIfBookExist()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command= "SELECT book_name from book_master_tbl where book_id='" + TextBox2.Text.Trim() + "';";
                con.Open();
                SqlCommand cmd = new SqlCommand(command, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        bool checkIfMemberExist()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "SELECT full_name from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';";
                con.Open();
                SqlCommand cmd = new SqlCommand(command, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        bool checkIfEntryExist()
        {
            using(SqlConnection con=new SqlConnection(connection))
            {
                string command = "select member_id, book_id from book_issue_tbl where book_id='" + TextBox2.Text.Trim() + "' and member_id='" + TextBox1.Text.Trim() + "'  ";
                con.Open();
                SqlCommand cmd = new SqlCommand(command, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        void issueBooks()
        {
            using(SqlConnection con=new SqlConnection(connection))
            {
                string command = "INSERT  into book_issue_tbl values(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.ToString());
                cmd.Parameters.AddWithValue("member_name", TextBox3.Text.ToString());
                cmd.Parameters.AddWithValue("book_id", TextBox2.Text.ToString());
                cmd.Parameters.AddWithValue("book_name", TextBox4.Text.ToString());
                cmd.Parameters.AddWithValue("issue_date", TextBox5.Text.ToString());
                cmd.Parameters.AddWithValue("due_date", TextBox6.Text.ToString());

                cmd.ExecuteNonQuery();

                string command1 = "update  book_master_tbl set current_stock = current_stock-1 WHERE book_id='" + TextBox2.Text.Trim() + "'";
                cmd = new SqlCommand(command1, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Book Issued Successfully');</script>");
                GridView1.DataBind();
            }
        }

        void returnBook()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "Delete from book_issue_tbl where book_id='" + TextBox2.Text.Trim() + "'AND member_id='" + TextBox1.Text.Trim() + "';";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();

                int result=cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    string command1 = "update book_master_tbl set current_stock = current_stock+1 WHERE book_id='" + TextBox2.Text.Trim() + "'";
                    cmd = new SqlCommand(command1, con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Book Returned Successfully');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Error - Invalid details');</script>");
                }
                GridView1.DataBind();
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        void getNames()
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                string command = "select * from book_master_tbl where book_id='" + TextBox2.Text.Trim() + "';";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('ID not exist');</script>");
                }
                string command1 = "select * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';";
                 cmd = new SqlCommand(command1, con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('ID not exist');</script>");
                }

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