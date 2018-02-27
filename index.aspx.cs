using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    public string JsonData;
    protected void Page_Load(object sender, EventArgs e)
    {

        Database db = new Database();
        db.getOrders(out List<Order> ordersData);

        var jsonSerialiser = new JavaScriptSerializer();
        JsonData = jsonSerialiser.Serialize(ordersData);


        foreach (Order a in ordersData) {
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            cell1.Text = a.Code;
            row.Cells.Add(cell1);

            TableCell cell2 = new TableCell();
            cell2.Text = a.Name;
            row.Cells.Add(cell2);

            TableCell cell3 = new TableCell();
            cell3.Text = a.Status;
            row.Cells.Add(cell3);

            TableCell cell4 = new TableCell();
            cell4.Text = a.Time;
            row.Cells.Add(cell4);

            TableCell cell5 = new TableCell();
            cell5.Text = a.Total;
            row.Cells.Add(cell5);

            if (a.Status != "confrimed")
            {
                TableCell cell6 = new TableCell();
                cell6.Text = "<span class='con' style='cursor:pointer;' title='click to confrim'>✔</span>";
                row.Cells.Add(cell6);
            }

            orders_table.Rows.Add(row);
        }
    }

}