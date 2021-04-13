using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace Admin
{
    public partial class adminflight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_click(object sender, EventArgs e)
        {
            string flino = Request.Form.Get("flino");
            string sairline = Request.Form.Get("airname");
            string source = Request.Form.Get("source");
            string destination = Request.Form.Get("destination");
            string date = Request.Form.Get("date");
            string dtime = Request.Form.Get("dtime");
            string atime = Request.Form.Get("atime");
            string price = Request.Form.Get("price");
           



            MySqlConnection conn = new MySqlConnection("datasource=localhost;port=3306;database=flyair;username=root;password=;");
            conn.Open();
            string query = "Select fno from flight";
            MySqlCommand cmdd = new MySqlCommand(query, conn);
            MySqlDataReader mydr = cmdd.ExecuteReader();
            int flight_flag = 0;
            while (mydr.Read())
            {
                if (flino.Equals(mydr["fno"].ToString()))
                {
                    flight_flag = 1;
                }
            }

            if (flight_flag == 1)
            {
                Response.Write("<script>alert('Flight already exist')</script>");
            }
            else
            {  //string mycon = "Server=localhost;Database=test1;Uid=root;Password= ;";
                MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=root;password=;");
                MySqlCommand cmd = new MySqlCommand("insert into flyair.flight(fno,source,destination,departuretime,arrivaltime,date,price,airlinename) values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8)", con);

                cmd.Parameters.AddWithValue("@a1", flino);
                cmd.Parameters.AddWithValue("@a2", source);
                cmd.Parameters.AddWithValue("@a3", destination);
                cmd.Parameters.AddWithValue("@a4", dtime);
                cmd.Parameters.AddWithValue("@a5", atime);
                cmd.Parameters.AddWithValue("@a6", date);
                cmd.Parameters.AddWithValue("@a7", price);
                cmd.Parameters.AddWithValue("@a8", sairline);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Saved Successfully')</script>");
                Response.Redirect("adminflight.aspx");
            }

        }
    }
}