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
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
public partial class report6 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlDataAdapter da;
    ReportDocument rept = new ReportDocument();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
     //   Response.Write(Class1.j);  
        rept.Load(Server.MapPath("~/CrystalReport5.rpt"));
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select b.*,l.*,c.* from booking b,login l,car c where b.uid = l.uid and b.cid = c.cid and b.bid = '" + Class1.j + "' and l.uid = '" + Class1.temp  + "'", cn);
        da.Fill(dt);

        rept.SetDataSource(dt);
        CrystalReportViewer1.ReportSource = rept;
        cn.Close();
    }
}
