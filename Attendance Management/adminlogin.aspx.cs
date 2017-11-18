using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        conn.Open();
        string studcheck = "select * from St where Sid='" + Sid.Text + "'";
        SqlCommand cmd = new SqlCommand(studcheck, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Student Id exists');</script>");
        }
        else
        {
            dr.Close();
            string studinsert = "insert into St(Sid,Name,Password,Course,Sem,DOB,Address,Phone,Email,Gender) values('" + Sid.Text + "','" + Name.Text + "','" + Name.Text + "','" + course.Text + "','" + year.Text + "','" + dob.Text + "','" + address.Text + "','" + phone.Text + "','" + email.Text + "','" + RadioButtonList1.SelectedValue + "')";
            string studin2 = "insert into Attendance(Sid,TL,AL,Updated_TL) values('" + Sid.Text + "',0,0,0)";
            SqlCommand cmdi = new SqlCommand(studinsert, conn);
            cmdi.ExecuteNonQuery();
            cmdi = new SqlCommand(studin2, conn);
            cmdi.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Student details added');</script>");
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
        if (!dr.IsClosed)
        {
            dr.Close();
        }
        conn.Close();
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        conn.Open();
        string teachcheck = "select * from Teacher where Tid='" + Tid.Text + "'";
        SqlCommand cmd = new SqlCommand(teachcheck, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Teacher Id exists');</script>");
        }
        else
        {
            dr.Close();
            string teachinsert = "insert into teacher values('" + Tid.Text + "','" + Tname.Text + "','" + Tname.Text + "','" + Tpno.Text + "','" + eid.Text + "','" + RadioButtonList2.SelectedValue + "','" + Tad.Text + "')";
            cmd = new SqlCommand(teachinsert, conn);
            cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Teacher details added');</script>");
        }
        Tid.Text = "";
        Tname.Text = "";
        Tpno.Text = "";
        eid.Text = "";
        Tad.Text = "";
        if (!dr.IsClosed)
        {
            dr.Close();
        }
        RadioButtonList2.SelectedIndex = 0;
        if (!dr.IsClosed)
        {
            dr.Close();
        }
        conn.Close();
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        conn.Open();
        int denm = Convert.ToInt32(den.Text);
        string studexist = "select * from Attendance where Sid='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(studexist, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.HasRows)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Student Id does not exist');</script>");
        }
        else
        {
            dr.Close();
            string check = "select * from Attendance where Sid='" + TextBox1.Text + "'";
            SqlCommand cmd3 = new SqlCommand(check, conn);
            SqlDataReader dr2 = cmd3.ExecuteReader();
            dr2.Read();
            int tempal = dr2.GetInt32(2);
            int tempul = dr2.GetInt32(3);
            dr2.Close();
            if (tempal > tempul - denm)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Updation');</script>");
            }
            else
            {
                string studcheck = "update Attendance set Updated_TL=Updated_TL-1 where SId='" + TextBox1.Text + "'";
                SqlCommand cmd2 = new SqlCommand(studcheck, conn);
                for (int i = 0; i < denm; i++)
                {
                    cmd2.ExecuteNonQuery();
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Attendance Updated');</script>");
            }
        }
        if (!dr.IsClosed)
        {
            dr.Close();
        }
        TextBox1.Text = "";
        den.Text = "";
        conn.Close();
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] != null)
        {
            string temp = Session["Name"].ToString();
            Label3.Text = "Hello "+temp;
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = -1;
        Response.Redirect("~/Login.aspx");
    }
}