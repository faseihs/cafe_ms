using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            Response.Redirect("AddItem.aspx");
        }
    }

    protected void login_btn_Click(object sender, EventArgs e)
    {
        if (username.Text != null || password.Text != null)
        {
            string user = username.Text;
            string pass = password.Text;

            if(user.Equals("admin") && pass.Equals("admin"))
            {
                Session["admin"] = "admin";
                Response.Redirect("AddItem.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Credentials');</script>");

            }
        }
        else
        {
            Response.Write("<script>alert('Empty Credentials');</script>");
        }
        
    }
}