using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("LoginAdmin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (name.Text != null || description.Text != null || price.Text != null)
        {
            string item_name = name.Text;
            string desc = description.Text;
            int pri = Convert.ToInt32(price.Text);
            Random rn = new Random();
            string p_image = null;
            HttpPostedFile file = Request.Files["p_image"];
            if (file != null && file.ContentLength > 0)
            {
                p_image = Path.GetFileName(file.FileName);
                file.SaveAs(Server.MapPath(Path.Combine("~/", p_image)));
                p_image = "~/" + p_image;
            }
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand(@"Insert into Product values ("+ rn.Next(1, 100) + ",'" + item_name.Trim() + "','"+ p_image.Trim() +"',"+ pri +",'"+desc+"');", cn);
            cn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                name.Text=" ";
                description.Text = " ";
                price.Text = " ";
                Response.Write("<script>alert('Product Added');</script>");
            }

        }
    }
}