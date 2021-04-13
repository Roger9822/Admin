using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace Admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_click(object sender, EventArgs e)
        {
                string admin = Request.Form.Get("adminname");
                string pass = Request.Form.Get("password");
           
                MySqlConnection conn = new MySqlConnection("datasource=localhost;port=3306;database=flyair;username=root;password=;");
                conn.Open();
                string query = "Select username,password from admin";
                MySqlCommand cmdd = new MySqlCommand(query, conn);
                MySqlDataReader mydr = cmdd.ExecuteReader();
                int admin_flag = 0;
                while (mydr.Read())
                {
                if (admin.Equals(mydr["username"].ToString()) && pass.Equals(mydr["password"].ToString()))
                {
                  admin_flag = 1;
                  
                }
            }

                if (admin_flag == 1)
                {
                    Response.Redirect("adminflight.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password')</script>");
                }
            
        }
        }
        }
