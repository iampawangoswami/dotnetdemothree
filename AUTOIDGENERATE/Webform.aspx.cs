using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AUTOIDGENERATE
{
    public partial class Webform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            SqlConnection con = new SqlConnection("Data Source = 192.168.0.109; Initial Catalog = pawan; Integrated Security = True");
            con.Open();                                                //opening db connectipon
            string qry = "select max (rollno) from student";          //creating ID
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int cid = Convert.ToInt32(dr[0]);
            cid++;
            TextBox1.Text = cid.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = 192.168.0.109; Initial Catalog = pawan; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[student]
            ([rollno]
            ,[name]
           ,[class])
        VALUES
           ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("Data Inserted Successfully");
            con.Close();
        }
}   }   