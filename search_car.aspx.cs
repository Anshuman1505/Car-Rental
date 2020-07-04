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
  
public partial class search_car : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    DataTable dt = new DataTable();
    string a;

    protected void Page_Load(object sender, EventArgs e)
    {
        display1();
 
    }
    private void display1()
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where uid ='" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Label1.Text = reader["name"].ToString();
        Image1.ImageUrl = "img/" + reader["u_image"].ToString();
        Label2.Text = reader["acc"].ToString();

        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = DateTime.Now.ToString();
        cn.Open();
        cmd = new SqlCommand("update login set acc = '" + s + "' where uid ='" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        this.Visible = false;
        Response.Redirect("login.aspx");
  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        a="HATCHBACK";
        display();
 

    }
    private void display()
    {
        cn.Open();
        cmd = new SqlCommand("select DISTINCT mname 'CAR NAME',brand 'COMPANY',fuel 'FUEL TYPE',amt_pkm 'AMOUNT/KM',img from car where c_type ='" + a + "'", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Class1.c = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Response.Write(Class1.c);  
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        a = "SEDAN";

        display();
 
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        a = "SUV";
        display(); 
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        a = "VAN";
        display();
 
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        this.Visible = false;
        Response.Redirect("Book_Ride.aspx");
  
    }
}
