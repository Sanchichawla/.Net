using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["collegecs"].ConnectionString);
        conn.Open();
        int denm = Convert.ToInt32(den.Text);
        Response.Write(denm);
        string studcheck = "update Attendance set UpdatedTL=UpdatedTL-1 where Sid='" + Sid.Text + "'";
        SqlCommand cmd = new SqlCommand(studcheck, conn);
        for(int i=0;i<denm;i++)
        {
            cmd.ExecuteNonQuery();
        }
        conn.Close();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}