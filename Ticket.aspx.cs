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
public partial class Ticket : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    DataTable dt = new DataTable();
 
    SqlCommand cmd;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        display1();
        cn.Open();
        cmd = new SqlCommand("select b.bid 'BOOKING ID',l.name 'RIDER NAME',l.contact 'CONTACT NO.',c.mname 'CAR',b.book_date 'RIDE DATE',b.total 'AMOUNT',b.status 'STATUS' from booking b,login l,car c where l.uid = b.uid and l.uid = '" + Class1.temp + "' and b.cid = c.cid ORDER BY status", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
 
    }
    private void display1()
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where uid ='" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Label2.Text = reader["name"].ToString();
        Image1.ImageUrl = "img/" + reader["u_image"].ToString();
        Label1.Text = reader["acc"].ToString();
        Class1.temp = reader["uid"].ToString();
        cn.Close();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.j = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text ;
        //Response.Write(Class1.j);
   
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Visible = false;
        Response.Redirect("report6.aspx");
  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s = DateTime.Now.ToString();
        cn.Open();
        cmd = new SqlCommand("update login set acc = '" + s + "' where uid ='" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        this.Visible = false;
        Response.Redirect("login.aspx");
  
    }
}
