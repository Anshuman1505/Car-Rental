<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>


<!DOCTYPE html>

<script runat="server">

   
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
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
              }
              .style13
              {
                  width: 222px;
                  height: 70px;
              }
              .style14
              {
                  height: 70px;
              }
              .style15
              {
                  width: 222px;
                  height: 71px;
              }
              .style16
              {
                  width: 222px;
                  height: 32px;
              }
              .style17
              {
                  height: 32px;
              }
              .style18
              {
                  width: 222px;
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
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </a> 
            </div>
        <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px; height: 54px; margin-left: 0px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last access :
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Red" Font-Bold="True" 
                Text="LOG OUT" onclick="Button2_Click" />
        </div>

        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:Image ID="Image2" runat="server" Height="166px" Width="189px" />
                </p>
                <ul class="nav" id="main-menu">
				
					
                    <li>
                        <a href="MyTrip.aspx"><i class="fa fa-dashboard fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MyTrip</a>
                    </li>
                    <li>
                        <a class="active-menu" href="UserProfile.aspx"><i class="fa fa-desktop fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profile</a>
                        </li>
                    <li>
                        <a  href="user_enq.aspx"><i class="fa fa-qrcode fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enquiry</a>
                    </li>
						   <li  >
                        <a   href="UserFeedback.aspx"><i class="fa fa-bar-chart-o fa-3x"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback</a>
                    </li>	
                      <li  >
                        <a  href="search_car.aspx"><i class="fa fa-table fa-3x"></i>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Book Ride</a>
                    </li>
                              <li  >
                        <a  href="Ticket.aspx"><i class="fa fa-square-o fa-3x"></i> Ticket</a>
                    </li>  
                    
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <!-- /. ROW  -->
                 <table class="style1" style="font-weight: bold; font-family: Arial">
                     <tr>
                         <td class="style2" align="center" colspan="2" 
                             style="font-family: 'Arial Black'; font-size: x-large; background-color: #FF0000; color: #FFFFFF">
                             User Profile
                                               </td>
                     </tr>
                     <tr>
                         <td class="style18">
                             USER IMAGE</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="style18" align="center">
                             <asp:Image ID="Image1" runat="server" Height="177px" Width="194px" />
                             &nbsp;&nbsp;&nbsp;&nbsp;
                             </td>
                         <td>
                             <table class="style1">
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" 
                                             BorderStyle="Ridge" Visible="False" />
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:Button ID="Button5" runat="server" BackColor="Red" BorderStyle="None" 
                                             Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Small" 
                                             ForeColor="White" onclick="Button5_Click" Text="SAVE" Visible="False" 
                                             Width="84px" />
                                     </td>
                                 </tr>
                             </table>
                         </td>
                     </tr>
                     <tr>
                         <td class="style18" align="center">
                             <asp:Button ID="Button3" runat="server" BackColor="Red" BorderStyle="None" 
                                 Font-Names="Berlin Sans FB Demi" Font-Size="Small" ForeColor="White" 
                                 Height="30px" onclick="Button3_Click" Text="CHANGE DISPLAY PICTURE" 
                                 Width="197px" />
                         &nbsp;&nbsp;&nbsp;
                         </td>
                         <td>
                             <br />
                             <br />
                         </td>
                     </tr>
                     <tr>
                         <td class="style13" style="background-color: #FFFFFF; color: #000000;">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             USER NAME </td>
                         <td class="style14">
                             &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="347px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
                                 ErrorMessage="*These textbox should not be blank"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="style13">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             CONTACT NO.</td>
                         <td class="style14">
                             <asp:TextBox ID="TextBox2" runat="server" Width="344px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic"
                                 ErrorMessage="*This textbox should not be blank"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="style13">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             EMAIL ID </td>
                         <td class="style14">
                             <asp:TextBox ID="TextBox3" runat="server" Width="343px"></asp:TextBox>
                                 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic"
                                 ErrorMessage="*This textbox should not be blank"></asp:RequiredFieldValidator>
                                 
                         </td>
                     </tr>
                     <tr>
                         <td class="style13">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             NUMBER OF RIDES</td>
                         <td class="style14">
                             <asp:Label ID="Label4" runat="server"></asp:Label>
                                 
                         </td>
                     </tr>
                     <tr>
                         <td class="style13">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             PASSWORD</td>
                         <td class="style14">
                             <asp:TextBox ID="TextBox5" runat="server" Width="338px"></asp:TextBox>
                                 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic"
                                 ErrorMessage="*Password should not be blank"></asp:RequiredFieldValidator>
                                 
                         </td>
                     </tr>
                     <tr>
                         <td class="style15">
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="style16">
                         </td>
                         <td class="style17">
                             <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="UPDATE" 
                                 BackColor="Red" BorderStyle="None" Font-Bold="True" 
                                 Font-Names="Berlin Sans FB Demi" Font-Size="Larger" ForeColor="White" 
                                 Height="37px" Width="136px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="style18">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="style18">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                </table>
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
