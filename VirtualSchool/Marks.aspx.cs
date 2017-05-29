using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace VirtualSchool
{
    public partial class Marks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MarksConnectionString"].ConnectionString);
                conn.Open();
                string checkroll = "select count(*) from Table3 where Roll='" + TextBox1.Text + "'";
                SqlCommand comm = new SqlCommand(checkroll, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists.");
                }





                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MarksConnectionString"].ConnectionString);
                conn.Open();
                string insertMarks = "insert into Table3 (Roll,Class,Section,Year,Subject,Marks) values (@Roll ,@Class ,@Sec ,@Year ,@Sub ,@Marks)";
                SqlCommand comm = new SqlCommand(insertMarks, conn);

                comm.Parameters.AddWithValue("@Roll",TextBox1.Text);
                comm.Parameters.AddWithValue("@Class", DropDownList1.SelectedItem.ToString()); 
                comm.Parameters.AddWithValue("@Sec", DropDownList2.SelectedItem.ToString()); 
                comm.Parameters.AddWithValue("@Year", DropDownList3.SelectedItem.ToString()); 
                comm.Parameters.AddWithValue("@Sub", DropDownList4.SelectedItem.ToString()); 
                comm.Parameters.AddWithValue("@Marks", TextBox2.Text);

                comm.ExecuteNonQuery();
                Response.Write("Marks enterd successfully.");
                Response.Redirect("MarksCentral.aspx");

                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:"+ex.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}