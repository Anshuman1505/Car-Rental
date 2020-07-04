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
using CrystalDecisions.CrystalReports.Engine;
public partial class report2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
//    SqlDataAdapter da;
    ReportDocument rept = new ReportDocument();
    DataTable dt = new DataTable(); 

    protected void Page_Load(object sender, EventArgs e)
    {
        rept.Load(Server.MapPath("~/CrystalReport.rpt"));
        SqlDataAdapter da = new SqlDataAdapter("select * from employee", cn);
        da.Fill(dt);

        rept.SetDataSource(dt);
        CrystalReportViewer1.ReportSource = rept;

    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}
