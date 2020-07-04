using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
  
public partial class driverlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from employee where eid = '" + TextBox1.Text + "' and pass = '" + TextBox2.Text + "'", cn);
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            Class1.A = reader["eid"].ToString();
            this.Visible = false;
            Response.Redirect("driverlog.aspx");
        }
        else
        {
            Label1.Visible = true; 
        }
    }
}
