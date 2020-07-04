<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ticket.aspx.cs" Inherits="Ticket" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
	<!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='#' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .style1
              {
                  width: 100%;
              }
              .style2
              {
                  width: 210px;
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
                <a class="navbar-brand" href="index.html">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </a>&nbsp;</div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;

font-size: 16px;"> Last access :  
       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      &nbsp;&nbsp; 
      <asp:Button ID="Button2" runat="server" BackColor="Red" Text="LOG OUT" 
          onclick="Button2_Click" />
            </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="156px" Width="189px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a  href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i> My Trip</a>
                    </li>
                      <li>
                        <a  href="UserProfile.aspx"><i class="fa fa-desktop fa-3x"></i> Profile</a>
                    </li>
                    <li>
                        <a  href="user_enq.aspx"><i class="fa fa-qrcode fa-3x"></i> Enquiry</a>
                    </li>
						   <li  >
                        <a  href="userfeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedback</a>
                    </li>	
                      <li  >
                        <a  href="search_car.aspx"><i class="fa fa-table fa-3x"></i> Book Ride</a>
                    </li>
                    				
					
				  <li  >
                        <a class="active-menu"  href="Ticket.aspx"><i class="fa fa-square-o fa-3x"></i> Ticket</a>
                    </li>	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>YOUR ALL RIDES</h2>   
                        <h5> </h5>
                       
                    </div>
                    
                    
                </div>
                 <!-- /. ROW  -->
                 <hr />
              
              
              
              <div>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                      BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                      CellPadding="4" Width="1003px" 
                      onselectedindexchanged="GridView1_SelectedIndexChanged">
                      <RowStyle BackColor="White" ForeColor="#330099" />
                      <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                      <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                  </asp:GridView>
              </div> 
              <div>
                  <br />
              </div>
              <div>
                  <br />
              </div>
              <div>
                  <table class="style1">
                      <tr>
                          <td>
                              &nbsp;</td>
                                <td class="style2">
                                    <asp:Button ID="Button1" runat="server" BackColor="#FF3300" BorderStyle="None" 
                                        Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" 
                                        ForeColor="White" Height="35px" onclick="Button1_Click" Text="PRINT TICKET" 
                                        Width="205px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
              </div>
              <div>
                  <br />
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
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
    </form>
    
   
</body>
</html>

