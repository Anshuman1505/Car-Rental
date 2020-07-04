<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>


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
     <!-- MORRIS CHART STYLES-->
    <link href="js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .newStyle1
              {
                  font-family: Aharoni;
                  font-weight: bold;
                  color: #FFFFFF;
                  background-color: #FF0000;
                  font-size: 22px;
              }
              .style1
              {
                  width: 100%;
              }
              .style2
              {
                  width: 142px;
              }
              .style3
              {
                  width: 422px;
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
font-size: 16px;"> &nbsp;&nbsp; <a href="f_page.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a href="Car.aspx"><i class="fa fa-dashboard fa-3x"></i> Car</a>
                    </li>
                    <li>
                        <a  href="Enquiries.aspx"><i class="fa fa-desktop fa-3x"></i> Enquiry</a>
                    </li>
                    <li>
                        <a  href="Employee.aspx"><i class="fa fa-qrcode fa-3x"></i> Employee</a>
                    </li>
						   <li  >
                        <a class="active-menu"   href="feedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a  href="book.aspx"><i class="fa fa-table fa-3x"></i> Booking</a>
                    </li>
                    
					                   
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Reports<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Emp_rep1.aspx">Employee Report</a>
                            </li>
                            <li>
                                <a href="book_rept1.aspx">Booking Report</a>
                            </li>
                            <li>
                                <a href="#">Ticket Print<span class="fa arrow"></span></a>
                                
                                </ul>
                               
                            </li>
                        </ul>
                      </li>  
                  <li  >
                        
                    </li>	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Feedback</h2>   
                        <h5>Welcome, Love to see you back. </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <div>
                 </div>
                 <div>
                 </div>
                 <div style="height: 18px">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                         BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                         CellPadding="4" Width="966px" 
                         onselectedindexchanged="GridView1_SelectedIndexChanged">
                         <RowStyle BackColor="White" ForeColor="#330099" />
                         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                     </asp:GridView>
                     <br />
                 <div align="center" class="newStyle1">
                     DETAILS</div>
                     <table class="style1">
                         <tr>
                             <td class="style2" style="font-weight: bold">
                                 <br />
                                 Booking ID*<br />
                             </td>
                             <td class="style3">
                                 <br />
                                 <asp:TextBox ID="TextBox5" runat="server" Width="411px"></asp:TextBox>
                                 <br />
                             </td>
                             <td>
                                 &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2" style="font-weight: bold">
                                    <br />
                                    Service<br />
                                </td>
                                <td class="style3">
                                    &nbsp;
                                    <br />
                                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Poor" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Good" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton4" runat="server" Text="Very Good" />
&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton5" runat="server" Text="Exellent" />
                                    <br />
                                </td>
                                <td rowspan="11">
                                    <asp:Image ID="Image1" runat="server" Height="230px" 
                                        ImageUrl="~/img/bigstock-feedback-icon-Testimonials-an-53156401.jpg" 
                                        Width="237px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" style="font-weight: bold">
                                    <br />
                                    Responce<br />
                                </td>
                                <td class="style3">
                                    &nbsp;
                                    <br />
                                    <asp:RadioButton ID="RadioButton6" runat="server" Text="Slow" />
&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton7" runat="server" Text="Very Slow" />
&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton8" runat="server" Text="Fast" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton9" runat="server" 
                                        oncheckedchanged="RadioButton9_CheckedChanged" Text="Medium" />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" style="font-weight: bold">
                                    <br />
                                    Driver Behaviour<br />
                                </td>
                                <td class="style3">
                                    &nbsp;&nbsp;
                                    <br />
                                    <asp:RadioButton ID="RadioButton10" runat="server" Text="Bad" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton11" runat="server" Text="Very Bad" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton12" runat="server" Text="Good" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton13" runat="server" Text="Very Good" />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <br />
                                    <br />
                                </td>
                                <td class="style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Feedback :"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="TextBox4" runat="server" Height="85px" Width="317px" 
                                        TextMode="MultiLine"></asp:TextBox>
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
                         <br />
                 </div>
                 <div>
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                 </div>
                     <div>
                         <br />
                         <br />
                     </div>
                 <div>
                 </div>
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
     <!-- MORRIS CHART SCRIPTS -->
     <script src="js/morris/raphael-2.1.0.min.js"></script>
    <script src="js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</form>
    
   
</body>
</html>
