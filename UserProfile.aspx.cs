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

public partial class UserProfile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlConnection c = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");  

    SqlCommand cmd;
    SqlDataReader reader;
    string x;
    string y;
    string z;


    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            display1();

            display();
 
        }
    }
    private void display1()
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where uid ='" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Label3.Text = reader["name"].ToString();
        Image2.ImageUrl = "img/" + reader["u_image"].ToString();
        Label1.Text = reader["acc"].ToString();
        //Image1.ImageUrl = "img/" + reader["u_image"].ToString();  
        cn.Close();
        //Label1.Text = reader["acc"].ToString();
   
  

    }
    private void display()
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where uid='" + Class1.temp + "'", cn);

        reader = cmd.ExecuteReader();
        reader.Read();
        
        
        
       TextBox1.Text = reader["name"].ToString();
        TextBox2.Text = reader["contact"].ToString();
        TextBox3.Text = reader["email"].ToString();
        Label4.Text   = reader["no_ride"].ToString();

        TextBox5.Text = reader["pass"].ToString();
        //TextBox6.Text = reader["no_ride"].ToString();
        Image1.ImageUrl = "img/" + reader["u_image"].ToString();
        //FileUpload1.PostedFile = reader["u_image"].ToString();

       // x = reader["u_image"].ToString();
        //y = reader["utype"].ToString();
        cn.Close(); 
    }



   
    

    
    protected void Button3_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        Button5.Visible = true;
 
   
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      string   s = DateTime.Now.ToString();
        cn.Open();
        cmd = new SqlCommand("update login set acc = '" + s + "' where uid ='" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        this.Visible = false;
        Response.Redirect("login.aspx");
  
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        c.Open();
           cmd = new SqlCommand("update login set name = '" + TextBox1.Text + "',contact = '" + TextBox2.Text + "',email='" + TextBox3.Text + "',pass = '" + TextBox5.Text +  "'  where uid = '" + Class1.temp + "'", c);
           cmd.ExecuteNonQuery();
           c.Close();
           Response.Write(Class1.temp);  


            /*cn.Open();
            cmd = new SqlCommand("update login set name = '" + TextBox1.Text + "',contact = '" + TextBox2.Text + "',email='" + TextBox7.Text + "',pass = '" + TextBox9.Text + "' where uid = '" + Class1.temp + "'", cn);
            cmd.ExecuteNonQuery();
            cn.Close();*/
        /*cn.Open();
        cmd = new SqlCommand("update login set name = '" + TextBox1.Text + "' where uid ='" + Class1.temp + "'", cn);
  
        cmd.ExecuteNonQuery();*/
  
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs("C:\\Users\\Ishan\\Documents\\Visual Studio 2008\\WebSites\\Car Rental\\img\\" + FileUpload1.FileName);
        string t = FileUpload1.FileName;
        cn.Open();
        cmd = new SqlCommand("update login set u_image = '" + t + "' where uid = '" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        display1();
        display();
        FileUpload1.Visible = false ;
        Button5.Visible = false ;
    }
}
