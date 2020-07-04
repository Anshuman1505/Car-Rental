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
  
public partial class f_page : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    SqlCommand cmd;
    SqlDataReader reader;
    string x;
    string y;
    string a;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
         a = DateTime.Now.ToShortDateString();
   
        cmd = new SqlCommand("select * from employee  where t_date = '" + a + "'", cn);
        reader = cmd.ExecuteReader();
        if(reader.HasRows  )
        {
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
             cmd = new SqlCommand("update employee set t_date = '" + a + "',stat = '0'", cn);
                cmd.ExecuteNonQuery();
               cn.Close ();

        }
        booking();
 

    }
        private void booking()
        {
            cn.Open();
            cmd = new SqlCommand("select * from booking where eid='' and book_date = '" + a + "' ORDER BY hh,mm",cn);
            reader = cmd.ExecuteReader();
            if(reader.HasRows  )
            {
                reader.Read ();
                x = reader["bid"].ToString();
           cn.Close();
           //Response.Write(x);  
           emp();
 
            }
            else
            {
                cn.Close();
 
            }

        }
        private void emp()
        {
            cn.Open();
            cmd = new SqlCommand("select * from employee where stat<4  ORDER BY stat", cn);
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                y = reader["eid"].ToString();
               // Response.Write(y);  
                cn.Close();
                cn.Open();
                cmd = new SqlCommand("update booking set eid = '" + y + "' where bid = '" + x + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();
                cmd = new SqlCommand("update employee set stat = stat + 1 where eid = '" + y + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                booking(); 
            }
            else
            {
                cn.Close();
 
            }
        
        }     
    
}
