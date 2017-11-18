using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class teachlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            L6.Text = (string)Session["User"];
           
            if (!IsPostBack)
            {
                Label3.Text= DateTime.Now.ToShortDateString();
              
                this.PopulateStudentDetails();
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    private void PopulateStudentDetails()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("SELECT Sid,Name FROM St", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gvStudents.DataSource = ds.Tables[0];
        gvStudents.DataBind();
    }

    protected void SaveStudentAttendance(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gvStudents.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {

                string constring = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                CheckBox chkAttendance = row.FindControl("chkAttendence") as CheckBox;
                int attendanceStatus = chkAttendance.Checked ? 1 : 0;

                int Sid = int.Parse((row.FindControl("lblRollNo") as Label).Text.Trim());

                using (SqlConnection con = new SqlConnection(constring))
                {
                    {
                        con.Open();
                        if (attendanceStatus == 1)
                        {

                            string query1 = "Update Attendance set AL= AL +1 where Sid= @sid";
                            SqlCommand cmd1 = new SqlCommand(query1, con);
                            cmd1.Parameters.AddWithValue("@sid", Sid);
                            cmd1.ExecuteNonQuery();
                        }

                        string query2 = "Update Attendance set TL= TL + 1 where Sid= @sid";
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd2.Parameters.AddWithValue("@sid", Sid);
                        cmd2.ExecuteNonQuery();
                        string query3 = "Update Attendance set Updated_TL= Updated_TL + 1 where Sid= @sid";
                        SqlCommand cmd3 = new SqlCommand(query3, con);
                        cmd3.Parameters.AddWithValue("@sid", Sid);
                        cmd3.ExecuteNonQuery();
                        con.Close();
                    }
                }

            }
        }
        foreach (GridViewRow row in gvStudents.Rows)
        {
            CheckBox chkAttendance = row.FindControl("chkAttendence") as CheckBox;
            chkAttendance.Checked = false;
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Attendance saved');</script>");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}