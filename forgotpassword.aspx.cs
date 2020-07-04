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
  
public partial class forgotpassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where email = '" + TextBox1.Text + "' and contact = '" + TextBox2.Text + "'",cn  );
        reader =cmd.ExecuteReader();
        if (reader.HasRows)
        {
            //TextBox3.Visible = true;
            TextBox4.Visible = true;

            Button2.Visible = true;
            reader.Read();
            Label3.Text = reader["ques"].ToString();
            cn.Close();  
        }

        else
        {
            cn.Close();
 

            Response.Write("<script type=\"text/javascript\">alert('WROUNG EMAIL OR CONTACT NO.');</script>");
  
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where email ='" + TextBox1.Text + "' and contact = '" + TextBox2.Text + "' and ques = '" + Label3.Text + "' and ans = '" + TextBox4.Text + "'", cn);
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            string a = Guid.NewGuid().ToString();
            string b = reader["uid"].ToString();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("update login set pass = '" + a + "' where uid = '" + b + "'", cn);
            cmd.ExecuteNonQuery();
          //  Response.Write("<script type=\"text/javascript\">alert('YOUR PASSWORD IS '" + a + "');</script>");
            cn.Close();
            Label1.Visible = true;
            Label2.Visible = true;
            Label2.Text = a;
 
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('WROUNG ANSWER OF SECUIRITY QUESTION');</script>");
        }
    }
}
