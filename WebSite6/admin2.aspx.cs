using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        int index = Int32.Parse(e.Item.Value);
        MultiView1.ActiveViewIndex = index;
    }

    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegecs"].ConnectionString);
        conn.Open();
        string studcheck = "select * from student where Sid='" + Sid.Text + "'";
        SqlCommand cmd = new SqlCommand(studcheck, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Student Id exists');</script>");
        }
        else
        {
            dr.Close();
            string studinsert = "insert into student values('" + Sid.Text + "','" + Name.Text + "','" + dob.Text + "','" + address.Text + "','" + phone.Text + "','" + email.Text + "','" + course.Text + "','" + year.Text + "','" + RadioButtonList1.SelectedValue + "')";
            cmd = new SqlCommand(studinsert, conn);
            cmd.ExecuteNonQuery();
        }
        Sid.Text = "";
        Name.Text = "";
        dob.Text = "";
        address.Text = "";
        phone.Text = "";
        email.Text = "";
        course.Text = "";
        year.Text = "";
        RadioButtonList1.SelectedIndex = 0;
        if(!dr.IsClosed)
        {
            dr.Close();
        }
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}