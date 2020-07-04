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
  
public partial class feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd;
    SqlDataReader reader;
    DataTable dt = new DataTable();
    int a;
    int b;
    int c;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select f.bid 'Booking id',e.eid 'Employee id',e.ename 'Driver Name', u.name ' Rider Name',u.email 'Email Id',u.contact 'Contact No.',f.feedback 'Feedback' from login u,feedback f,booking b,employee e where f.uid=u.uid and f.bid = b.bid and b.eid = e.eid and b.status = 'COMPLETED'", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string r = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        clear(); 
        cn.Open();
        cmd = new SqlCommand("select * from feedback where bid = '" + r + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        display3(); 
        TextBox4.Text = reader["feedback"].ToString();
        cn.Close();
 
    }
    private void display3()
    {
        TextBox5.Text = reader["bid"].ToString();
   
        a = reader.GetInt32(2);
  
        b = reader.GetInt32(3) ;
        c = reader.GetInt32(4) ;

        //Response.Write(a); 

        if (a == 1)
        {
            RadioButton2.Checked = true; 
        }
        if (a == 2)
        {
            RadioButton3.Checked = true;
        }
        if (a == 3)
        {
            RadioButton4.Checked = true;
        }
        if (a == 4)
        {
            RadioButton5.Checked = true;
        }
        if (b  == 1)
        {
            RadioButton6.Checked = true;
        }
        if (b == 2)
        {
            RadioButton7.Checked = true;
        }
        if (b == 3)
        {
            RadioButton8.Checked = true;
        }
        if (b  == 4)
        {
            RadioButton9.Checked = true;
        }
        if (c == 1)
        {
            RadioButton10.Checked = true;

        }
        if (c == 2)
        {
            RadioButton11.Checked = true;

        }
        if (c == 3)
        {
            RadioButton12.Checked = true;

        }
        if (c == 4)
        {
            RadioButton13.Checked = true;

        }
    }

    private void clear()
    {
        RadioButton2.Checked = false;

        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
        RadioButton5.Checked = false;
        RadioButton6.Checked = false;
        RadioButton7.Checked = false;

        RadioButton8.Checked = false;
        RadioButton9.Checked = false;
        RadioButton10.Checked = false;
        RadioButton11.Checked = false;
        RadioButton12.Checked = false;
        RadioButton13.Checked = false;
        TextBox4.Text = "";
        TextBox5.Text = "";
 
    }





    protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
    {

    }
}
