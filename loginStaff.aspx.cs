using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

        Database db = new Database();

        if (db.CheckUser(Login1.UserName, Login1.Password))
        {
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            Response.Redirect(Login1.DestinationPageUrl);
        }
        else
        {
            Login1.FailureText = "Username and/or password is incorrect.";
        }
    }
}