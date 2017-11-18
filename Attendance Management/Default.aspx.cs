using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Roll_No"] != null)
        {
            string temp = Session["Name"].ToString();
            L5.Text = temp;
            Label5.Text =(string)Session["Course"];
            Label2.Text = (string)Session["Sem"];
            string rno = (string)Session["Roll_No"];
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
                con.Open();
                string qry = "select * from Attendance where Sid='" + rno + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                    Label6.Text = dr[3].ToString();
                    Label7.Text = dr[2].ToString();
                
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}