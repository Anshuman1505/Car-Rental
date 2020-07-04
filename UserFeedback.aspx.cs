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

public partial class UserFeedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");


    SqlCommand cmd;
    SqlDataReader reader;
    int  a;
    int b;
    int  c;
    DataTable dt = new DataTable();
    string w;

    protected void Page_Load(object sender, EventArgs e)
    {
        display1();
        cn.Open();
        cmd = new SqlCommand("select b.bid 'BOOKING ID',b.book_date 'BOOKING DATE',b.total 'TOTAL AMOUNT' from booking b , login l where b.uid = l.uid and l.uid = '" + Class1.temp + "' and b.status = 'COMPLETED' ", cn);
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
        Label1.Text = reader["name"].ToString();
        Image2.ImageUrl = "img/" + reader["u_image"].ToString();
        //Image1.ImageUrl = "img/" + reader["u_image"].ToString();
        Label2.Text = reader["acc"].ToString();
        //TextBox1.Text = reader["name"].ToString();
        Class1.temp = reader["uid"].ToString();
   
        cn.Close();
       
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
        RadioButton1.Checked = false;
        TextBox1.Text = "";
        TextBox2.Text = "";

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from feedback where bid = '" + TextBox1.Text + "'", cn);
        //int y = (int)cmd.ExecuteScalar();  
        //reader.Read();
        reader = cmd.ExecuteReader();
  
        if (reader.HasRows)
        {
            Response.Write("<script type=\"text/javascript\">alert('ALREADY GIVEN FEEDBACK');</script>");
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("insert into feedback(bid,r1,r2,r3,feedback,uid,f_stat)values('" + TextBox1.Text + "'," + a + "," + b + "," + c + ",'" + TextBox2.Text + "','" + Class1.temp + "','YES')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            a = 1;

        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            a = 2;

        }

    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton3.Checked == true)
        {
            a = 3;

        }

    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton4.Checked == true)
        {
            a = 4;

        }

    }
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton5.Checked == true)
        {
            b = 1;

        }

    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton6.Checked == true)
        {
            b = 2;

        }
    }
    protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton7.Checked == true)
        {
            b = 3;

        }
    }
    protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton8.Checked == true)
        {
            b = 4;

        }
    }
    protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == true)
        {
            c  = 1;

        }
    }
    protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton10.Checked == true)
        {
            c = 2;

        }

    }
    protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton11.Checked == true)
        {
            c = 3;

        }
    }
    protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton12.Checked == true)
        {
            c = 4;

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        clear(); 
        w = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        TextBox1.Text = w;
 
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
