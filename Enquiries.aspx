<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enquiries.aspx.cs" Inherits="Enqiries" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
   <link href='#' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .newStyle1
              {
                  font-family: "Berlin Sans FB";
                  font-size: large;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
                  width: 950px;
              }
              .style1
              {
                  width: 98%;
              }
              .style2
              {
                  width: 138px;
              }
              .style3
              {
                  width: 431px;
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
                    <span class="fa fa-bar"></span>
                    <span class="fa fa-bar"></span>
                    <span class="fa fa-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"></a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">  &nbsp; <a href="f_page.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
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
                        <a class="active-menu"   href="Enquiries.aspx"><i class="fa fa-desktop fa-3x"></i> Enquiries</a>
                    </li>
                    <li>
                        <a  href="Employee.aspx"><i class="fa fa-qrcode fa-3x"></i> Employee</a>
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
					    </ul>
					  </li> 			
				
                          </ul>				
                    								
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Enquiry</h2>   
                        <h5>Welcome , Love to see you back. </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <div class="row">
                    
                    </div>
                    <div>
                        <br />
                    </div>
                    <div>
                    
                     <asp:GridView ID="GridView1" runat="server" Width="953px" BackColor="White" 
                         BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                         ForeColor="White" AutoGenerateSelectButton="True" 
                         onselectedindexchanged="GridView1_SelectedIndexChanged">
                         <RowStyle BackColor="White" ForeColor="#330099" />
                         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                         <HeaderStyle BackColor="#CC90000" Font-Bold="True" ForeColor="White" />
                     </asp:GridView>
                    
                        <br />
                    <div align="center" class="newStyle1">
                        REPLY TO QUERY</div>
                    </div>
                    <div>
                        <br />
                        <br />
                            <table class="style1" style="font-weight: bold">
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td rowspan="10">
                                        <asp:Image ID="Image1" runat="server" Height="257px" 
                                            ImageUrl="~/img/contact-icon.png" Width="329px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        QUERY :</td>
                                    <td class="style3">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="54px" TextMode="MultiLine" 
                                            Width="374px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        REPLY :</td>
                                    <td class="style3">
                                        <asp:TextBox ID="TextBox2" runat="server" Height="54px" TextMode="MultiLine" 
                                            Width="372px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="None" 
                                            Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Larger" 
                                            ForeColor="White" Height="36px" onclick="Button1_Click" Text="SUBMIT" 
                                            Width="122px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                            </table>
                    </div>
                        <div>
                        </div>
                        <div>
                        </div>
                        <div>
                        </div>
                <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                <!-- /. ROW  -->
                <!-- /. ROW  -->
    </div>
             <!-- /. PAGE INNER  -->
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
     
</form>
     
</body>
</html>

