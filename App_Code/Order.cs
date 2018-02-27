using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
public class Order
{
    public string Code { get; set; }
    public string Time { get; set; }
    public string Name { get; set; }
    public string Uid { get; set; }
    public string Status { get; set; }
    public string Total { get; set; }

    public Order()
    {
    }

    public Order(SqlDataReader reader)
    {
        Code = reader["order_code"].ToString();
        Time = reader["order_time"].ToString();
        Name = reader["Name"].ToString();
        Uid = reader["User_Id"].ToString();
        Status = reader["Status"].ToString();
        Total = reader["GrandTotal"].ToString();
    }

    public Order(string code, string time, string name, string uid, string status, string total)
    {
        Code = code;
        Time = time;
        Name = name;
        Uid = uid;
        Status = status;
        Total = total;
    }
}