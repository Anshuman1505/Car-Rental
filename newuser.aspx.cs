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
public partial class newuser : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd;
    SqlDataReader reader;
 
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //string d = Image1.ImageUrl;
        //Response.Write(d);  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string d= Image1.ImageUrl;
        Random r = new Random();
  
        string a = TextBox4.Text;
        string b = TextBox5.Text; 
        cn.Open();
 cmd=new SqlCommand("select * from login where email='" + TextBox2.Text + "' and contact = '" + TextBox3.Text + "'",cn);
      reader =cmd.ExecuteReader();
      if (reader.HasRows)
      {
          Response.Write("<script type=\"text/javascript\">alert('ALREADY ACCOUNT IS CREATED WITH THIS EMAIL AND CONTACT NUMBER');</script>");
          cn.Close();
          clear();
 
      }
      else
      {
          cn.Close();
          if (a == b)
          {
              cn.Open();
              string F = r.Next(101,999).ToString();
              string c = "UI" + F; 
              cmd = new SqlCommand("insert into login(uid,name,email,contact,pass,u_image,ques,ans,no_ride,utype)values('" + c + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','images.png','" + DropDownList1.Text + "','" + TextBox6.Text + "',0,'User')", cn);
              cmd.ExecuteNonQuery();
              cn.Close();
              Response.Write("<script type=\"text/javascript\">alert('YOUR ACCOUNT IS CREATED ');</script>");
              clear(); 
          }
          else
          {
              Response.Write("<script type=\"text/javascript\">alert('PASSWORD AND CONFIRM PASSWORD ARE NOT SAME');</script>");
          }


          
      }
    }
    private void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
 
    }

}
