using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Enqiries : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd;
    SqlDataReader r;
    DataTable dt = new DataTable();
//    string w;

    protected void Page_Load(object sender, EventArgs e)
    {
        c.Open();
        cmd = new SqlCommand("select enq_id 'ENQUIRY ID',name 'Name',email 'E-mail',contact 'Contact No.',query 'Query' from enquiry where rpl_stat = 'NO'", c);
        r = cmd.ExecuteReader();
        dt.Load(r);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        c.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.Open();
        cmd = new SqlCommand("update enquiry set rply = '" + TextBox2.Text + "',rpl_stat = 'YES' where enq_id = '" + Class1.W + "'", c);
        cmd.ExecuteNonQuery();
        c.Close(); 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.W   = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        c.Open() ;
        cmd = new SqlCommand("select * from enquiry where enq_id = '" + Class1.W   + "'", c);
        r = cmd.ExecuteReader();
        r.Read();
        TextBox1.Text = r["query"].ToString();
        c.Close(); 
    }
}
