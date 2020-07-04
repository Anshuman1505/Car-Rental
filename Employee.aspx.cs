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
  
public partial class Employee : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlDataReader reader;
    SqlCommand cmd;
    DataTable dt = new DataTable();
    int a;

    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            cmd = new SqlCommand("select eid 'EMPLOYEE ID',ename 'EMPLOYEE NAME',econtact 'CONTACT NO.',e_address 'ADDRESS' from employee", cn);
            reader = cmd.ExecuteReader();
            dt.Load(reader);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cn.Close();
            Class1.x = 1;
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string r = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        cn.Open();
        cmd = new SqlCommand("select * from employee where eid ='" + r + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        display(); 
        cn.Close();
       Class1.x = 2;
 
    }
    private void display()
    {
        TextBox1.Text= reader["eid"].ToString();
        TextBox2.Text = reader["nic"].ToString();
        TextBox3.Text = reader["ename"].ToString();
        TextBox4.Text = reader["econtact"].ToString();
        TextBox5.Text = reader["e_address"].ToString();
        TextBox6.Text = reader["doj"].ToString();
        Image1.ImageUrl ="img/" + reader["e_img"].ToString();   
        TextBox7.Text = reader["salary"].ToString();
        TextBox8.Text = reader["license"].ToString();
        TextBox9.Text = reader["insur_no"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs("C:\\Users\\Ishan\\Documents\\Visual Studio 2008\\WebSites\\Car Rental\\img\\" + FileUpload1.FileName);
        string temp = FileUpload1.FileName;
        Response.Write(Class1.x);  
        
        if (Class1.x == 2)
        {
            cn.Open();
            cmd=new SqlCommand("update employee set nic='" + TextBox2.Text + "',ename='" + TextBox3.Text + "',e_img ='" + temp + "',salary='" + TextBox7.Text + "',contact='" + TextBox4.Text + "',e_address = '" + TextBox5.Text + "',license='" + TextBox8.Text + "',insur_no = '" + TextBox9.Text + "' where eid = '" + TextBox1.Text + "'",cn);
            cmd.ExecuteNonQuery();
            cn.Close();
 
        }
        else 
        {
            cn.Open();
            cmd = new SqlCommand("insert into employee(eid,nic,ename,econtact,e_address,doj,salary,license,insur_no,e_img)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'," + TextBox7.Text + ",'" + TextBox8.Text + "','" + TextBox9.Text + "','" + temp + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        
        
 
    }
    private void clear()
    {
       // TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        
   
 
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from employee where eid = '" + TextBox1.Text + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        clear();
        Random r = new Random();
        string t = r.Next(101, 999).ToString();
        string y = "EI" + t;
        TextBox1.Text = y;
 
    }
}
