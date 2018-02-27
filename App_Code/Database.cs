using System;
using System.Collections.Generic;
using System.Windows;
using System.Globalization;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public class Database
{
    private SqlConnection connection;
    //Constructor
    public Database()
    {
        Initialize();
    }
    public SqlConnection getCon()
    {
        return connection;
    }

    //Initialize values
    private void Initialize()
    {
        string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        connection = new SqlConnection(con);
    }

    //open connection to database
    public bool OpenConnection()
    {
        try
        {
            if (connection.State == System.Data.ConnectionState.Closed)
                connection.Open();
            return true;

        }
        catch (SqlException ex)
        {
            Console.WriteLine(ex.Message);
            return false;
        }

    }

    //Close connection
    private bool CloseConnection()
    {
        try
        {
            connection.Close();
            return true;
        }
        catch (SqlException ex)
        {
            Console.WriteLine(ex.Message);
            return false;
        }
    }

    public bool Execute(string Query)
    {
        if (this.OpenConnection() == true)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(Query, connection);
                cmd.ExecuteNonQuery();
                this.CloseConnection();
                return true;
            }
            catch (SqlException ex)
            {
                this.CloseConnection();
                return false;
            }
        }
        else
        {
            return false;
        }
    }

    public bool CheckUser(string email, string password)
    {
        string query = "SELECT count(*) FROM StaffUsers where email='" + email + "' and [password]='" + password + "';";
        if (this.OpenConnection() == true)
        {
            SqlCommand cmd = new SqlCommand(query, connection);
            //Create a data reader and Execute the command
            SqlDataReader dataReader = cmd.ExecuteReader();
            dataReader.Read();
            int count = dataReader.GetInt32(0);

            dataReader.Close();
            this.CloseConnection();
            if (count > 0)
                return true;
            else return false;
        }
        return false;


    }

    public bool InsertUser(string username, string email, string password)
    {
        string query = "INSERT INTO StaffUsers (name, email, password) VALUES('" + username + "','" + email + "','" + password + "');";
        return Execute(query);
    }


    public bool getOrders(out List<Order> data)
    {
        data = new List<Order>();
        string query = "SELECT * FROM [Order];";
        if (this.OpenConnection() == true)
        {
            SqlCommand cmd = new SqlCommand(query, connection);
            //Create a data reader and Execute the command
            SqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read())
            {
                data.Add(new Order(dataReader));
            }
            dataReader.Close();
            this.CloseConnection();
            return true;
        }
        else
        {
            return false;
        }
    }
}