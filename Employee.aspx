<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ADMIN PORTAL</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .newStyle1
              {
                  font-family: Aparajita;
                  font-weight: bold;
                  font-size: 38px;
                  color: #FFFFFF;
                  background-color: #FF0000;
                  width: 987px;
              }
              .style1
              {
                  width: 98%;
              }
              .style3
              {
                  width: 150px;
              }
              .style4
              {
                  height: 25px;
                  width: 150px;
              }
              .style5
              {
                  width: 413px;
              }
              .style6
              {
                  height: 25px;
                  width: 413px;
              }
          </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"></a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">&nbsp; <a href="f_page.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a  href="Car.aspx"><i class="fa fa-dashboard fa-3x"></i> Car</a>
                    </li>
                      <li>
                        <a  href="Enquiries.aspx"><i class="fa fa-desktop fa-3x"></i> Enquiry</a>
                    </li>
                    <li>
                        <a  class="active-menu" href="Employee.aspx"><i class="fa fa-qrcode fa-3x"></i> Employee</a>
                    </li>
						   <li  >
                        <a  href="feedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a  href="book.aspx"><i class="fa fa-table fa-3x"></i> Bookings</a>
                    </li>
                    <li  >
                        <a  href="form.html"><i class="fa fa-edit fa-3x"></i> Reports <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Emp_rep1.aspx">Employee Reports</a>
                            </li>
                            <li>
                                <a href="book_rept1.aspx">Booking Reports</a>
                            </li>				
					        <li>
                                <a href="#">Ticket Print</a>
                            </li>
					    <ul>
					  </li>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Employee </h2>   
                        <h5>Welcome , Love to see you back. </h5>
                       
                    </div>
                    <div>
                    
                        <br />
                        <br />
                    
                    </div>
                     
                </div>
                 <!-- /. ROW  -->
                 <div>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            Width="993px" AutoGenerateSelectButton="True" Height="96px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#C90000" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    
                     <br />
<div align="center" class="newStyle1">
    DETAILS</div>                 
                 </div>
                <div>
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label1" runat="server" Text="EMPLOYEE ID:" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox1" runat="server" Width="353px"></asp:TextBox>
                            </td>
                            <td rowspan="13">
                                <asp:Image ID="Image1" runat="server" BorderColor="Black" Height="234px" 
                                    Width="233px" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label2" runat="server" Text="AADHAR ID :" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox2" runat="server" Width="349px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="EMPLOYEE NAME :"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox3" runat="server" Width="345px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="CONTACT :"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="TextBox4" runat="server" Width="345px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="ADDRESS :"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox5" runat="server" Width="344px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="DATE OF JOINING :"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox6" runat="server" Width="346px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="SALARY :"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox7" runat="server" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="LICENSE NO. :"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox8" runat="server" Width="349px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" 
                                    Font-Bold="True" BorderStyle="Solid" Width="209px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="INSURANCE NO. :"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox9" runat="server" Width="349px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                <br />
                                <br />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" BackColor="Red" BorderStyle="None" 
                                    ForeColor="White" Height="35px" onclick="Button3_Click" Text="ADD EMPLOYEE" 
                                    Width="134px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="None" 
                                    ForeColor="White" Height="35px" Text="ADD/UPDATE" Width="134px" 
                                    onclick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" 
                                    Font-Bold="False" ForeColor="White" Height="35px" Text="DELETE" 
                                    Width="140px" onclick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </div> 
                 
                  
            </div>
            <div>
            </div>
            <div>
            </div>
            
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</form>
    
   
</body>
</html>
