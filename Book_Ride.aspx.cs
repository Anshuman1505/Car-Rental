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
   
public partial class Book_Ride : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");


    SqlCommand cmd;
    SqlDataReader reader;
    string X;
    string Y;
    int x;
    int z;
    int a;
    float  b;
    protected void Page_Load(object sender, EventArgs e)
    {
        display1();
        display2();
        
       
 
    }
    private void display1()
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where uid ='" + Class1.temp + "'", cn);
        reader = cmd.ExecuteReader();
        reader.Read();
        Label2.Text = reader["name"].ToString();
        Image2.ImageUrl = "img/" + reader["u_image"].ToString();
        //Image1.ImageUrl = "img/" + reader["u_image"].ToString();  
        //cn.Close();
        Label9.Text = reader["name"].ToString();
        Class1.o   = reader.GetInt32(6);
        
        Random r = new Random();
        Label10.Text   = "BI" + r.Next().ToString();
        Label1.Text = reader["acc"].ToString();
   
        cn.Close();
    }
    private void display2()
    {
        cn.Open();
        cmd = new SqlCommand("select img ,cid,amt_pkm from car where mname = '" + Class1.c + "' and avail ='YES'" , cn);
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {

            while (reader.Read())
            {
                // Response.Write(reader["amt_pkm"].ToString());  
                X = reader["cid"].ToString();
                Y = reader["img"].ToString();
                // z = reader.GetInt32(6);
                string m = reader["amt_pkm"].ToString();
                Class1.Q = int.Parse(m);
                //Response.Write(z);  
                break;
            }
            cn.Close();
            Label8.Text = X;
            Image3.ImageUrl = Y;
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('SORRY CAR IS NOT AVAILABLE ');</script>");
            cn.Close();
 
        }

 
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from employee WHERE stat<4 ORDER BY stat", cn);
        reader = cmd.ExecuteReader();
        string a = DateTime.Now.ToShortDateString();    
        while (reader.Read())
        {
            string b = reader["t_date"].ToString();


            if (b == Class1.g)
            {
                x = 5;
                Class1.emp  = reader["eid"].ToString();
                break;
            }
            else
            {
              //  Class1.B = reader["eid"].ToString();
                break;
 
            }
            
        }
        cn.Close();
        cn.Open();
        Response.Write(Class1.B);  
        cmd= new SqlCommand("insert into booking(uid,bid,book_date,pickup,pick_city,destination,dest_city,hh,dist,amt,discount,pay_mth,total,cid,eid,status,mm)values('" + Class1.temp + "','" + Label10.Text   + "','" + Class1.g + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "'," + TextBox19.Text + "," + Label12.Text   + "," + Label13.Text   + ",'" + Label14.Text + "','" + DropDownList1.Text + "'," + Label15.Text  + ",'" + Label8.Text  + "','" + Class1.emp  + "','APPROVED'," + TextBox20.Text + ")" ,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        if (x == 5)
        {
            cn.Open();
            cmd = new SqlCommand("update employee set stat = stat+1 where eid = '" + Class1.emp  + "'", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        cn.Open();
        cmd = new SqlCommand("update car set avail = 'NO' where cid = '" + Label8.Text   + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("update login set no_ride = no_ride + 1 where uid = '" + Class1.temp + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
 
 
         
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Class1.g = Calendar1.SelectedDate.ToShortDateString() ;
       // Response.Write(Class1.g);
  
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {
      


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
//        int t;
        Random rm = new Random();
        Label12.Text = rm.Next(1, 20).ToString();
   
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label11.Visible = true; 
        Label7.Visible = true;
       // TextBox12.Visible = true;
        //TextBox14.Visible = true;
        //TextBox18.Visible = true;
        DropDownList1.Visible = true;
        if (Label12.Text   != "")
        {
            string w = Label12.Text  ;
            int g = int.Parse(w);
            int f = g * Class1.Q ;
            Label13.Text   = f.ToString();
             string re = Label13.Text  ;
            Class1.P = float.Parse (re) ;  
        }
        Response.Write(Class1.o);  
        if (Class1.o >= 5)
        {
            b = 5;
            Label14.Text = b.ToString();
        }
        if (Class1.o  > 10)
        {
            b = 10;
            Label14.Text = b.ToString();
        }
        if (Class1.o < 5)
        {
            b = 0;
            Label14.Text = b.ToString();
        }
        Button4.Visible = false ;
        Button1.Visible = true;
        float v = b / 100;
         v = v * Class1.P;
       //  Response.Write(v);  
        Class1.P = Class1.P - v ;
       // Response.Write(Class1.P );  
        Label15.Text   = Class1.P.ToString();
   
    }
    private void clear()
    {
        //TextBox1.Text = "";
        //TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        //TextBox10.Text = "";
        //TextBox12.Text = "";
        //TextBox14.Text = "";
      // TextBox16.Text = "";

        //TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        Label8.Text = "";
        Label9.Text = "";
        Label10.Text = "";
        Label12.Text = "";
        Label3.Text = "";
        Label14.Text = "";
        Label15.Text = ""; 
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();

    }
    protected void Button3_Click(object sender, EventArgs e)
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
