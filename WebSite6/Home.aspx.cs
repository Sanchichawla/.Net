using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;  
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Home_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        int index = Int32.Parse(e.Item.Value);
        MultiView1.ActiveViewIndex = index;
    }

    protected void StudentLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegecs"].ConnectionString);
        conn.Open();
        string studcheck = "select * from StudentLogin where Sid='" + Sid.Text + "' and Password='" + Spassword.Text + "'";
        SqlCommand cmd = new SqlCommand(studcheck, conn);
        SqlDataReader rdr = null;
        DataSet ds = new DataSet();
        rdr = cmd.ExecuteReader();
        if (rdr.HasRows)
        {
            Response.Redirect("student.aspx");
        }
        conn.Close();
    }

    protected void TeacherLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegecs"].ConnectionString);
        conn.Open();
        string teachcheck = "select * from TeacherLogin where Tid='" + Tid.Text + "' and Password='" + Tpassword.Text + "'";
        SqlCommand cmd = new SqlCommand(teachcheck, conn);
        SqlDataReader rdr = null;
        DataSet ds = new DataSet();
        rdr = cmd.ExecuteReader();
        if (rdr.HasRows)
        {
            Response.Redirect("teacher.aspx");
        }
        conn.Close();
    }

    protected void AdminLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegecs"].ConnectionString);
        conn.Open();
        string adcheck = "select * from AdminLogin where Aid='" + Aid.Text + "' and Password='" + Apassword.Text + "'";
        SqlCommand cmd = new SqlCommand(adcheck, conn);
        SqlDataReader rdr = null;
        DataSet ds = new DataSet();
        rdr = cmd.ExecuteReader();
        if (rdr.HasRows)
        {
            Response.Redirect("admin.aspx");
        }
        conn.Close();
    }
}