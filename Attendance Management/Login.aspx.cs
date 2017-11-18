using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    SqlCommand cmd1 = null;
    SqlDataReader dr1 = null;


    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void slogin_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select Password,Name,Course,Sem,Sid from St where Sid='" + sid.Text + "'", con);
        dr = cmd.ExecuteReader();
        bool flag = false;
        while (dr.Read())
        {
            if (dr[0].Equals(spass.Text))
            {
                Session["Roll_No"] = dr[4];
                Session["Name"] = dr[1];
                Session["Course"] = dr[2];
                Session["Sem"] = dr[3];
                Response.Redirect("~/Default.aspx");
                flag = true;
            }
        }
        if (!flag)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Username or Password');</script>");
            spass.Text = "";
            sid.Text = "";
        }

        con.Close();
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        int index = Int32.Parse(e.Item.Value);
        MultiView1.ActiveViewIndex = index;
    }

    protected void tlogin_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd1 = new SqlCommand("select Password,Username from Teacher where Tid='" + tid.Text + "'", con);
        dr1 = cmd1.ExecuteReader();
        bool flag = false;
        while (dr1.Read())
        {
            if (dr1[0].Equals(tpass.Text))
            {
                Session["User"] = dr1[1];
                Response.Redirect("~/teachlogin.aspx");
                flag = true;
            }
        }
        if (!flag)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Username or Password');</script>");
            tpass.Text = "";
            tid.Text = "";
        }

        con.Close();
    }

    protected void alogin_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select Password,Name from Admin where Aid='" + aid.Text + "'", con);
        dr = cmd.ExecuteReader();
        bool flag = false;
        while (dr.Read())
        {
            if (dr[0].Equals(apass.Text))
            {
                Session["Name"] = dr[1];
                Response.Redirect("~/adminlogin.aspx");
                flag = true;
            }
        }
        if (!flag)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Username or Password');</script>");
            aid.Text = "";
            apass.Text = "";
        }

        con.Close();

    }
}
