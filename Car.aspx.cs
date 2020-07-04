using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection c=new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd;
    SqlDataReader r;
    DataTable dt = new DataTable();
    int au = 0;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            c.Open();
            cmd = new SqlCommand("select cid 'ID',mname 'Model',brand 'Brand',fuel 'Fuel',avail 'Available' from car", c);
            r = cmd.ExecuteReader();
            dt.Load(r);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            c.Close();
            Class1.x = 1;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = GridView1.SelectedRow.Cells[1].Text;
        c.Open();
        cmd = new SqlCommand("select * from car where cid = '" + s + "'", c);
        r = cmd.ExecuteReader();
        r.Read();
        Display();
        c.Close();

        Class1.x = 2;
 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script type=\"text/javascript\">alert('No entry Selected');</script>");
        }
        else
        {
            c.Open();
            cmd = new SqlCommand("delete from car where cid = '" + TextBox1.Text + "'", c);
            cmd.ExecuteNonQuery();
            Response.Write("<script type=\"text/javascript\">alert('Delete Successfully');</script>");
            c.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write(Class1.x); 
        FileUpload1.SaveAs("C:\\Users\\Ishan\\Documents\\Visual Studio 2008\\WebSites\\Car Rental\\img\\" + FileUpload1.FileName);
        string temp = FileUpload1.FileName;
        c.Open();
        if (Class1.x == 2)
        {
            cmd = new SqlCommand("update car set cid = '" + TextBox1.Text + "',mname = '" + TextBox2.Text + "',brand = '" + TextBox3.Text + "',fuel = '" + DropDownList1.Text + "',avail= '" + TextBox5.Text + "',img = '" + temp + "' where cid = '" + TextBox1.Text + "'", c);
            cmd.ExecuteNonQuery();
            au = 0;
        }
        if(Class1.x ==1 ) 
        {
          cmd = new SqlCommand("insert into car(cid,mname,brand,avail,fuel,img,c_type,amt_pkm)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "','img/" + FileUpload1.FileName +"','" + TextBox7.Text + "' , '" + TextBox8.Text + "')", c);
           cmd.ExecuteNonQuery();
        }
        c.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        bool flag = false;
        c.Open();
        cmd = new SqlCommand("select * from car", c);
        r=cmd.ExecuteReader();
        while (r.Read())
        {
            if (TextBox6.Text == r["cid"].ToString())
            {
                Display();
                flag = true;
            }
        }
        if (flag = false)
        {
            Response.Write("<script type=\"text/javascript\">alert('No car of this ID id registered');</script>");
        }
    }
    protected void Display()
    {
        au = 1;
        TextBox1.Text = r["cid"].ToString();
        TextBox2.Text = r["mname"].ToString();
        TextBox3.Text = r["brand"].ToString();
        DropDownList1.Text = r["Fuel"].ToString();
        TextBox5.Text = r["avail"].ToString();
        Image1.ImageUrl =   r["img"].ToString();
        TextBox7.Text = r["c_type"].ToString();
        TextBox8.Text = r["amt_pkm"].ToString();
  
    }
    private void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        //TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";

 
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        clear();
 
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
