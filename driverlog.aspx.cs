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
public partial class driverlog : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    DataTable dt = new DataTable();
    string X;
 
    protected void Page_Load(object sender, EventArgs e)
    {

        display();
        display1();
 
    }
    private void display()
    {
        cn.Open();
        cmd = new SqlCommand("select * from employee where eid = '" + Class1.A + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Image1.ImageUrl = "img/" + reader["e_img"].ToString();
        Label1.Text = reader["ename"].ToString();
        Label2.Text = DateTime.Now.ToShortDateString();
    
        cn.Close(); 
    }
    private void display1()
    {
         X = DateTime.Now.ToShortDateString();
   
        cn.Open();
        cmd = new SqlCommand("select b.bid 'BOOKING ID',l.name 'RIDER NAME',l.contact 'CONTACT NO.',b.hh 'PICKUP TIME(HH)',b.mm 'PICKUP TIME(MM)',c.cid 'CAR NUMBER' from employee e,booking b,login l,car c where b.eid = e.eid and b.uid = l.uid and b.cid = c.cid and e.eid = '" + Class1.A + "' and b.book_date = '" + X + "' and b.status = 'APPROVED'", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
 
 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from booking where bid = '" + TextBox1.Text + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        string x = reader["uid"].ToString();
        string y = reader["cid"].ToString();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("update booking set status = 'COMPLETED' where bid = '" + TextBox1.Text + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("update car set avail = 'YES' where cid = '" + y + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

       // cn.Close();
        cn.Open();
        cmd = new SqlCommand("update login set no_ride = no_ride+1 where uid = '" + x + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

         
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string y = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        cn.Open();
        cmd = new SqlCommand("select b.*,l.*,c.*,e.* from booking b,login l,employee e,car c  where b.eid = e.eid and b.uid = l.uid and b.cid = c.cid and e.eid = '" + Class1.A + "' and b.book_date = '" + X + "' and b.status = 'APPROVED' and b.bid = '" + y + "'" , cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        //string v = reader["bid"].ToString();
        //Response.Write(v);  
   
    }
    private void display2()
    {
        TextBox1.Text = reader["bid"].ToString();
        TextBox2.Text = reader["name"].ToString();
        TextBox3.Text = reader["contact"].ToString();
        TextBox4.Text = reader["pickup"].ToString();
        TextBox5.Text = reader["pick_city"].ToString();
        TextBox6.Text = reader["hh"].ToString();
        TextBox7.Text = reader["mm"].ToString();
        TextBox8.Text = reader["destination"].ToString();
        TextBox9.Text = reader["dest_city"].ToString();
        TextBox10.Text = reader["pay_mth"].ToString();
        TextBox11.Text = reader["total"].ToString();
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string y = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        cn.Open();
        cmd = new SqlCommand("select b.*,l.*,c.*,e.* from booking b,login l,employee e,car c  where b.eid = e.eid and b.uid = l.uid and b.cid = c.cid and e.eid = '" + Class1.A + "' and b.book_date = '" + X + "' and b.status = 'APPROVED' and b.bid = '" + y + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
       // string v = reader["bid"].ToString();
        //Response.Write(v);  

        display2();
 
    }
}
