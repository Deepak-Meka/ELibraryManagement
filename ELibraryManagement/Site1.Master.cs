using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton1.Visible = true; //userlogin button
                    LinkButton2.Visible = true; //signup button
                    LinkButton3.Visible = false;//Logout button
                    LinkButton7.Visible = false;//hello user button

                    LinkButton6.Visible = true; //Admin Login Button
                    LinkButton11.Visible = false;//AuthorManagement Button
                    LinkButton12.Visible = false;//PublisherManagement Button
                    LinkButton8.Visible = false;//BookInventory Button
                    LinkButton9.Visible = false;//BookIssue Button
                    LinkButton10.Visible = false;//membermanagement Button

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //userlogin button
                    LinkButton2.Visible = false; //signup button
                    LinkButton3.Visible = true;//Logout button
                    LinkButton7.Visible = true;//hello user button
                    LinkButton7.Text = "Hello" + Session["username"].ToString();

                    LinkButton6.Visible = true; //Admin Login Button
                    LinkButton11.Visible = false;//AuthorManagement Button
                    LinkButton12.Visible = false;//PublisherManagement Button
                    LinkButton8.Visible = false;//BookInventory Button
                    LinkButton9.Visible = false;//BookIssue Button
                    LinkButton10.Visible = false;//membermanagement Button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //userlogin button
                    LinkButton2.Visible = false; //signup button
                    LinkButton3.Visible = true;//Logout button
                    LinkButton7.Visible = true;//hello user button
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; //Admin Login Button
                    LinkButton11.Visible = true;//AuthorManagement Button
                    LinkButton12.Visible = true;//PublisherManagement Button
                    LinkButton8.Visible = true;//BookInventory Button
                    LinkButton9.Visible = true;//BookIssue Button
                    LinkButton10.Visible = true;//membermanagement Button
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuthorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublisherManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookInventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssueBook.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("homepage.aspx");
        }
    }
}