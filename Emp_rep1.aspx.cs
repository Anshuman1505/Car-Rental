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
public partial class Emp_rep1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd;
    SqlDataReader reader;
    DataTable dt = new DataTable();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select eid 'Employee Id',nic 'Aadhar Id',ename 'Employee Name',econtact 'Contact',e_address 'Address',license 'License No.',insur_no 'Insur. No',salary 'Salary' from employee", cn);
        reader = cmd.ExecuteReader();
        dt.Load(reader);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();

         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Visible = false;
        if (Class1.a == 2)
        {
            Response.Redirect("report3.aspx");
        }
        else
        {
            Response.Redirect("report2.aspx");  
        }
        Response.Redirect("report2.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.A = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        Class1.a = 2;  
    }
}
