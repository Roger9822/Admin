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

        protected void Button4_click(object sender, EventArgs e)
        {
            string flino = flino1.Text;
            string sairline = DropDownList1.SelectedValue;
            string source = source1.Text;
            string destination = destination1.Text;
            string date = date1.Text;
            string dtime = dtime1.Text;
            string atime = atime1.Text;
            string price = price1.Text;




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
        public string getWhileLoopData()
        {
            string htmlStr = " ";
            MySqlConnection conn = new MySqlConnection("datasource=localhost;port=3306;database=flyair;username=root;password=;");
            conn.Open();
            string query2 = "Select * from flight";
            MySqlCommand cmdd2 = new MySqlCommand(query2, conn);
            MySqlDataReader mydr2 = cmdd2.ExecuteReader();

            while (mydr2.Read())
            {
                string flino1 = mydr2.GetString(1);
                string sairline1 = mydr2.GetString(8);
                string source1 = mydr2.GetString(2);
                string destination1 = mydr2.GetString(3);
                string date1 = mydr2.GetString(6);
                string dtime1 = mydr2.GetString(4);
                string atime1 = mydr2.GetString(5);
                string price1 = mydr2.GetString(7);
                htmlStr += "<tr><td>" + flino1 + "</td><td>" + sairline1 + "</td><td>" + source1 + "</td><td>" + destination1 + "</td>" +
                    "<td>" + date1 + "</td><td>" + dtime1 + "</td><td>" + atime1 + "</td><td>" + price1 + "</td></tr>";
            }


            conn.Close();
            return htmlStr;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 2;
        }

        protected void Button5_click(object sender, EventArgs e)
        {
            string flino = TextBox1.Text;
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

            if (flight_flag == 0)
            {
                Response.Write("<script>alert('Flight does not exist')</script>");
            }
            else
            {  //string mycon = "Server=localhost;Database=test1;Uid=root;Password= ;";
                MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=root;password=;");
                MySqlCommand cmd = new MySqlCommand("DELETE from flyair.flight where fno=" + flino + " ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Deleted Successfully')</script>");
                Response.Redirect("adminflight.aspx");
            }


        }
    }
}