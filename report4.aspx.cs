﻿using System;
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
  
public partial class report4 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Ishan\\Documents\\CarRental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlDataAdapter da;
    ReportDocument rept = new ReportDocument();
    DataTable dt = new DataTable(); 
    protected void Page_Load(object sender, EventArgs e)
    {
       // Response.Write(Class1.rep);  
        rept.Load(Server.MapPath("~/CrystalReport3.rpt"));
        if (Class1.b == 0)
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select l.*,b.*,c.cid,c.mname from login l ,booking b,car c where b.status='COMPLETED' and l.uid = b.uid and c.cid = b.cid and b.book_date ='" + Class1.rep + "'", cn);
            da.Fill(dt);

            rept.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rept;
            cn.Close();
        }
        if (Class1.b == 2)
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select l.*,b.*,c.cid,c.mname from login l ,booking b,car c where b.status='COMPLETED' and l.uid = b.uid and c.cid = b.cid ", cn);
            da.Fill(dt);

            rept.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rept;
            cn.Close();
        }

    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}
