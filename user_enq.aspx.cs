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
public partial class user_enq : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlDataReader reader;
    SqlCommand cmd;
    string w;
    DataTable dt = new DataTable();
    string A;

    protected void Page_Load(object sender, EventArgs e)
    {
        display1();
        cn.Open();
        cmd = new SqlCommand("select name,email,contact from login where uid = '" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        
        TextBox1.Text = reader["name"].ToString();
        TextBox3.Text = reader["contact"].ToString();
        TextBox2.Text = reader["email"].ToString();
        cn.Close();
       // display2();
 

    }
    private void display1()
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where uid ='" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Label1.Text = reader["name"].ToString();
       
        Image1.ImageUrl ="img/" + reader["u_image"].ToString();
        Label2.Text = reader["acc"].ToString();
   
        cn.Close();
        //Response.Write(d);
  
    }
    private void display2()
    {
        cn.Open();
        cmd = new SqlCommand("select e.enq_id 'ENQUIRY ID',e.query 'YOUR QUESTION',e.rply 'REPLY' from enquiry e , login l where l.email = e.email or l.uid = e.contact and l.uid = '" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close(); 
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        w = Guid.NewGuid().ToString();
        cn.Open();
        cmd = new SqlCommand("insert into enquiry(enq_id,name,contact,email,query,rpl_stat)values('" + w + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','NO')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
 

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        A = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        cn.Open();
        cmd = new SqlCommand("select * from enquiry where enq_id = '" + A + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Label3.Text   = reader["rply"].ToString();
   
        if (Label3.Text   == "")
        {
            Response.Write("<script type=\"text/javascript\">alert('NO REPLY FROM ADMIN');</script>");
        }
        else
        {
            TextBox1.Text = reader["name"].ToString();
            TextBox3.Text = reader["contact"].ToString();
            TextBox2.Text = reader["email"].ToString();
            TextBox4.Text = reader["query"].ToString();
            Label3.Text = reader["rply"].ToString();
   
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
 
        display2(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Button2.Visible = false; 
        string s = DateTime.Now.ToString();
        cn.Open();
        cmd = new SqlCommand("update login set acc = '" + s + "' where uid ='" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        this.Visible = false;
        Response.Redirect("login.aspx");
  
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "";
        Label3.Text = "";
        Button2.Visible = true;

        cn.Open();
        cmd = new SqlCommand("select name,email,contact from login where uid = '" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();

        TextBox1.Text = reader["name"].ToString();
        TextBox3.Text = reader["contact"].ToString();
        TextBox2.Text = reader["email"].ToString();
        cn.Close();
    }
}
