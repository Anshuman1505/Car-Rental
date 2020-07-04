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
public partial class book_rept1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    DataTable dt = new DataTable();
    DateTime t1;
    int b;
    protected void Page_Load(object sender, EventArgs e)
    {
        t1 = DateTime.Now;
        if (!IsPostBack)
        {
            //t1 = DateTime.Now;
            TextBox1.Text = DateTime.Now.ToShortDateString();

            dis();
        }
        
    }
    private void dis()
    {
        cn.Open();
        cmd = new SqlCommand("select l.uid 'User id' ,l.name 'Name',l.contact 'Contact',b.bid 'Booking Id',b.book_date 'Booking Date',b.pick_city 'Pickup City',b.dest_city 'Destination city',c.mname 'Picked Car',b.total 'Total Amount' from booking b,car c,login l where l.uid=b.uid and c.cid= b.cid and b.status='COMPLETED' and b.book_date ='" + TextBox1.Text + "'", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.A = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        b = 2;
 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Visible = false;
        if (b == 2)
        {
           // Class1.rep = TextBox1.Text;  
            Response.Redirect("report5.aspx");
        }
        else
        {
            Class1.rep = TextBox1.Text;
  
            Response.Redirect("report4.aspx");
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        GridView1.DataSource = null;
        GridView1.DataBind(); ; 
        DateTime t2 = Calendar1.SelectedDate;
        Response.Write(t2);
  
       // string s1 = Calendar1.SelectedDate.ToShortTimeString();
        if (t1>=t2)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            dis();
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('WRONG DATE SELECTED');</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1.b = 2;
        this.Visible = false;
        Response.Redirect ("report4.aspx");
  
 
    }
}
