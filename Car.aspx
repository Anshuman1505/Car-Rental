<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Car.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ADMIN PORTAL</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
   <link href='#' rel='stylesheet' type='text/css' />
          <style type="text/css">
              .style1
              {
                  width: 76%;
                  height: 467px;
                  margin-right: 1px;
              }
              .style2
              {
                  margin-left: 120px;
              }
              .style3
              {                  margin-left: 40px;
              }
              .style4
              {
                  width: 99%;
              }
              .style5
              {
                  width: 276px;
                  height: 33px;
              }
              .style6
              {
                  width: 269px;
                  height: 33px;
              }
              .style7
              {
                  width: 267px;
                  height: 33px;
              }
              .style8
              {
                  height: 33px;
              }
              .style9
              {
                  margin-left: 40px;
                  height: 55px;
              }
              .style10
              {
                  width: 265px;
              }
              .style11
              {
                  width: 596px;
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
                        <a class="active-menu"  href="Car.aspx"><i class="fa fa-dashboard fa-3x"></i> Car</a>
                    </li>
                     <li>
                        <a  href="Enquiries.aspx"><i class="fa fa-desktop fa-3x"></i> Enquiries</a>
                    </li>
                    <li>
                        <a  href="Employee.aspx"><i class="fa fa-qrcode fa-3x"></i> Employee</a>
                    </li>
						   <li  >
                        <a   href="feedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i> Feedbacks</a>
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
					
					                   
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard</h2>   
                        <h5>Welcome , Love to see you back. </h5>
                    </div>
                     </div>              
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                <div class="row">
                <div>
                <div>
                </div>
                <br />
                <div>
                </div>
                </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        Width="957px" AutoGenerateSelectButton="True" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <RowStyle ForeColor="#000066" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#C90000" Font-Bold="True" ForeColor="White" BorderWidth="1px" />
                    </asp:GridView>
                    <br />
                        <table class="style4">
                            <tr>
                                <td class="style7">
                                    &nbsp; &nbsp;</td>
                                <td align="center" class="style5">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="260px" 
                                        placeholder="Enter Car ID" Height="25px"></asp:TextBox>
                                </td>
                                <td align="center" class="style6">
                                    <asp:Button ID="Button3" runat="server" BackColor="#FF4848" ForeColor="White" 
                                        Text="Find" Width="85px" BorderColor="#FF4848" BorderStyle="None"
                                        class="btn btn-danger square-btn-adjust" 
                                        Height="30px" onclick="Button3_Click" />
                                </td>
                                <td class="style8">
                                    </td>
                            </tr>
                        </table>
                </div>
                
                <div align="left">
                <div>
                </div>
                <br />
                    <div id="Details" align="center" 
                        
                        
                        
                        
                        
                        
                        style="background-color: #CE0000; font-family: sans-serif; font-size: 22px; font-style: inherit; font-variant: inherit; text-transform: uppercase; color: #FFFFFF; font-weight: bold; width: 993px; height: 53px; margin-top: 62px;">
                
                        <p class="style2" style="font-size: 36px; height: 19px;" align="center">
                        
                            DETAILS</p>
                    </div>
                <br />
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Car ID :"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="381px" 
                                    placeholder="Car ID" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                            <td class="style3" colspan="2" rowspan="9">
                                <asp:Image ID="Image1" runat="server" Width="334px" Height="284px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Model :"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" Width="381px" placeholder=" Enter Car Model"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Brand :"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox3" runat="server" Width="382px" placeholder="Enter Car's Brand"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Fuel Type : "></asp:Label>
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="381px" 
                                    placeholder="Fuel used by vehicle">
                                    <asp:ListItem>Petrol</asp:ListItem>
                                    <asp:ListItem>Diesel</asp:ListItem>
                                    <asp:ListItem>CNG</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Available :"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox5" runat="server" Width="381px" 
                                    placeholder="Is Vehicle available or not" Height="24px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="2" style="font-weight: bold">
                                Car Type :<br />
                                <asp:TextBox ID="TextBox7" runat="server" Width="381px" Height="24px" placeholder = "Enter Car Type"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3" style="font-weight: bold">
                                Rate:<br />
&nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="381px" Height="24px" placeholder = "Enter Rate"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                            <td class="style3">
                                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" 
                                    Font-Bold="True" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3" align="center">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <div>
                        <table class="style4">
                            <tr>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style11">
                                <asp:Button ID="Button1" runat="server" BackColor="#FF4848" 
                                    Class="btn btn-danger square-btn-adjust" Font-Bold="False" ForeColor="White" 
                                    Text="ADD/UPDATE" Width="120px" onclick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="#FF4848" 
                                    Class="btn btn-danger square-btn-adjust" Text="DELETE" Width="121px" 
                                    ForeColor="White" onclick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" BackColor="#FF4848" ForeColor="White" 
                                        onclick="Button4_Click" Text="CLEAR" Width="121px" BorderStyle="None" 
                                        Height="34px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
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


