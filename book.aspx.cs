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
   
public partial class book : System.Web.UI.Page
{
     SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

     SqlCommand cmd;
     SqlDataReader reader;
     DataTable dt = new DataTable();
     DataTable dt2 = new DataTable();

     DataTable dt1 = new DataTable();
     DateTime t1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            t1 = DateTime.Now;
            TextBox13.Text = DateTime.Now.ToShortDateString();
            display4(); 
    
        }
    }
    private void display4()
    {

        cn.Open();
        cmd = new SqlCommand("select l.name 'Rider Name',l.contact 'Rider Contact',b.bid 'Booking Id',b.book_date 'Booking Date',b.pick_city 'Pickup City',b.dest_city 'Destination city',c.mname 'Picked Car',b.total 'Total Amount',e.ename 'Driver Name' from booking b,car c,login l,employee e where l.uid=b.uid and c.cid= b.cid and b.status='APPROVED' and b.eid = e.eid and book_date = '" + TextBox13.Text + "'", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView3.DataSource = dt;
        GridView3.DataBind();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("select l.name 'Rider Name',l.contact 'Rider Contact',b.bid 'Booking Id',b.book_date 'Booking Date',b.pick_city 'Pickup City',b.dest_city 'Destination city',c.mname 'Picked Car',b.total 'Total Amount',e.ename 'Driver Name' from booking b,car c,login l,employee e where l.uid=b.uid and c.cid= b.cid and b.status='COMPLETED' and b.eid = e.eid and book_date = '" + TextBox13.Text + "'", cn);
        reader = cmd.ExecuteReader();
       
        dt1.Load(reader);
        GridView2.DataSource = dt1;
        GridView2.DataBind();
        cn.Close();
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string g2 = GridView2.Rows[GridView2.SelectedIndex].Cells[3].Text;
        cn.Open();
        cmd = new SqlCommand("select b.*,l.*,c.*,e.* from employee e,car c ,booking b,login l where b.bid = '" + g2 + "' and b.uid = l.uid and b.cid = c.cid and b.eid = e.eid ", cn);
        
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            //if (reader["eid"].ToString != "")
            
                reader.Read();
                display();
                cn.Close();
            

        }
        else
        {
            cn.Close();

        }
    }
    private void display()
    {
        Label16.Text   = reader["name"].ToString();
        Label17.Text = reader["contact"].ToString();
        Label18.Text = reader["email"].ToString();
        Label19.Text = reader["bid"].ToString();

        Label20.Text = reader["book_date"].ToString();
        Label21.Text = reader["pickup"].ToString();
        Label22.Text = reader["pick_city"].ToString();
        Label23.Text = reader["destination"].ToString();

        Label24.Text = reader["dest_city"].ToString();
        Label25.Text = reader["mname"].ToString();
        Label26.Text = reader["cid"].ToString();
        Label27.Text = reader["ename"].ToString();
        Label28.Text = reader["amt"].ToString();
        Label29.Text = reader["discount"].ToString();
        Label30.Text = reader["total"].ToString();
 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
       
 
    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        GridView2.DataSource = null;
        GridView2.DataBind();
        GridView3.DataSource = null;
        GridView3.DataBind();
  
        clear(); 
        t1 = DateTime.Now;
        DateTime t2 = Calendar1.SelectedDate;
        if (t1 >= t2)
        {
            TextBox13.Text = Calendar1.SelectedDate.ToShortDateString();
            display4();

        }
        else
        {
          //  Response.Write("<script type=\"text/javascript\">alert('Wroung Date Selected from calender');</script>");
            TextBox13.Text = Calendar1.SelectedDate.ToShortDateString();
            cn.Open();
           // cmd = new SqlCommand("select b.*,l.*,c.* from booking b,car c,login l where b.uid = l.uid and c.cid = b.cid and b.book_date = '" + TextBox13.Text + "'", cn);
          //  cn.Open();
            cmd = new SqlCommand("select l.name 'Rider Name',l.contact 'Rider Contact',b.bid 'Booking Id',b.book_date 'Booking Date',b.pick_city 'Pickup City',b.dest_city 'Destination city',c.mname 'Picked Car',b.total 'Total Amount' from booking b,car c,login l where l.uid=b.uid and c.cid= b.cid and b.status='APPROVED' and  book_date = '" + TextBox13.Text + "'", cn);
       
            reader = cmd.ExecuteReader();
           // reader.Read();
           // dis5();
            dt.Load(reader);
            GridView3.DataSource = dt;
            GridView3.DataBind();
            cn.Close();
 
        }

    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string g1 = GridView3.Rows[GridView3.SelectedIndex].Cells[3].Text;
        cn.Open();
        cmd = new SqlCommand("select b.*,l.*,c.*,e.* from employee e,car c ,booking b,login l where b.bid = '" + g1 + "' and b.uid = l.uid and b.cid = c.cid and b.eid = e.eid ", cn);
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {

            reader.Read();
            display();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("select l.*,b.*,c.* from booking b,car c,login l where b.bid = '" + g1 + "' and b.uid = l.uid and b.cid = c.cid", cn);
            reader = cmd.ExecuteReader();
            reader.Read();
            dis5();
            cn.Close();
 
        }
 
    }
    private void clear()
    {
        Label16.Text = "";


        Label17.Text = "";
        Label18.Text = "";
        Label19.Text = "";
        Label20.Text = "";
        Label21.Text = "";
        Label22.Text = "";
        Label23.Text = "";
        Label24.Text = "";
        Label25.Text = "";
        Label26.Text = "";
        Label27.Text = "";
        Label28.Text = "";
        Label29.Text = "";
        Label30.Text = "";

    }
    private void dis5()
    {
        string si = "Driver not assingn yet";
        Label16.Text = reader["name"].ToString();
        Label17.Text = reader["contact"].ToString();
        Label18.Text = reader["email"].ToString();
        Label19.Text = reader["bid"].ToString();

        Label20.Text = reader["book_date"].ToString();
        Label21.Text = reader["pickup"].ToString();
        Label22.Text = reader["pick_city"].ToString();
        Label23.Text = reader["destination"].ToString();

        Label24.Text = reader["dest_city"].ToString();
        Label25.Text = reader["mname"].ToString();
        Label26.Text = reader["cid"].ToString();
        Label27.Text = si;

        Label28.Text = reader["amt"].ToString();
        Label29.Text = reader["discount"].ToString();
        Label30.Text = reader["total"].ToString();
    }

}
