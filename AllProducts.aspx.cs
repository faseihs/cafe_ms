using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("LoginAdmin.aspx");
        }
        else
            fill();
    }

    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
         
        int id = Convert.ToInt32(products.SelectedRow.Cells[1].Text);
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string selectSQL = "DELETE from Product where ProductId="+id+";";

        SqlCommand cmd = new SqlCommand(selectSQL, cn);
        cn.Open();
        if (cmd.ExecuteNonQuery() >0)
        {
            Response.Write("<script>alert('Product Deleted');</script>");
            fill();
            
        }

    }

    protected void fill()
    {
        products.Columns.Clear();

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string selectSQL = "SELECT * from Product";
        SqlCommand cmd = new SqlCommand(selectSQL, cn);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "Employee");

        products.DataSource = ds;
        products.DataBind();
    }
}