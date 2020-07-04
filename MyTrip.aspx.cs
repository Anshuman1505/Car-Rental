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
   
public partial class MyTrip : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    DataTable dt = new DataTable();
    
    string s;
   // string a;
    string w;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            // Session.Abandon();
            //FormsAuthentication.SignOut();
            /* Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
             Response.Cache.SetCacheability(HttpCacheability.NoCache);
             Response.Cache.SetNoStore();*/
            display1();
            display3();
        }
        else
        {
            this.Visible = false;
            Response.Redirect("login.aspx");  
        }

    }
    private void display3()
    {
       // GridView1.Columns.Clear();      
        cn.Open();
        cmd = new SqlCommand("select b.bid 'BOOKING ID',b.book_date 'BOOKING DATE',b.pickup 'PICKUP LOCATION',b.hh 'HOUR',b.mm 'MINUTE',b.status 'STATUS' from booking b , login l where  b.uid = l.uid and b.uid = '" + Class1.temp + "'", cn);
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

    protected void Button1_Click1(object sender, EventArgs e)
    {
        s = DateTime.Now.ToString();
         
        cn.Open();
        cmd = new SqlCommand("update login set acc = '" + s + "' where uid ='" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        this.Visible = false;
        Response.Redirect("login.aspx");
  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.r   = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        cn.Open();
        cmd = new SqlCommand("select l.*,b.*,c.*,e.* from login l,booking b,car c,employee e where b.uid = l.uid and b.cid = c.cid and b.eid = e.eid and b.bid = '" + Class1.r + "' and l.uid ='" + Class1.temp + "' ORDER BY book_date,status DESC", cn);
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {

            reader.Read();
            if (reader["status"].ToString() == "COMPLETED")
            {
                //Response.Write(reader["cid"].ToString());
                display();
            }
            else
            {
                display();
                Button2.Visible = true;
            }
        }
        else
        {
           // display();
            cn.Close();
            Response.Write("<script type=\"text/javascript\">alert('YOUR RIDE IS APPROVED DRIVER CONTACT WILL BE SOON DISPLAYED');</script>");
          //  display();
           // Button2.Visible = true;
        }
 
    
    }
    private void display()
    {
        Label3.Text   = reader["bid"].ToString();
        Label4.Text = reader["book_date"].ToString();
        Label5.Text = reader["pickup"].ToString();
        Label6.Text = reader["pick_city"].ToString();
        Image2.ImageUrl = reader["img"].ToString();
        w = reader["eid"].ToString();
  
        Label7.Text = reader["destination"].ToString();
        Label8.Text = reader["dest_city"].ToString();
        Label9.Text = reader["ename"].ToString();
        Label10.Text = reader["econtact"].ToString();
        Label11.Text = reader["dist"].ToString();
        Label12.Text = reader["total"].ToString();
        //TextBox1.Text = reader["bid"].ToString();
        Label13.Text = reader["cid"].ToString();
    
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from booking where bid = '" + Class1.r  + "'", cn);
       // Response.Write("<script type=\"text/javascript\">alert('WANT TO DELETE RIDE ??');</script>");
        cmd.ExecuteNonQuery();
        cn.Close();
      //  Response.Write("<script type=\"text/javascript\">alert('YOUR BOOKING IS DELETED');</script>");
        cn.Open();
        cmd = new SqlCommand("update login set no_ride = no_ride-1 where uid = '" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("update car set avail = 'NO' where cid = '" + Label13.Text + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("update employee set stat = stat - 1 where eid ='" + w + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close(); 
        Response.Write("<script type=\"text/javascript\">alert('YOUR BOOKING IS DELETED');</script>");
        GridView1.DataSource = null;
        GridView1.DataBind();  
        display3();
 
    }
}
