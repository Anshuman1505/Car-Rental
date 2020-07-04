<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 328px;
        }
        .style3
        {
            width: 470px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    
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
                <td align="center">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="123px" 
                        ImageUrl="~/img/logo.png" onclick="ImageButton1_Click" 
                        PostBackUrl="~/f_page.aspx" Width="225px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2" style="font-weight: bold; font-size: large">
                    FORGOT PASSWORD??</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Font-Bold="True" 
                        Height="24px" Width="330px" placeholder = "EMAIL ID"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Font-Bold="True" 
                        Height="24px" Width="330px" placeholder = "CONTACT NO."></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" BackColor="Red" BorderStyle="None" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="24px" 
                        Text="SUBMIT" Width="330px" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Visible="False" 
                        Width="329px" placeholder = "ANSWER"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="24px" 
                        Text="GET PASSWORD" Width="330px" onclick="Button2_Click" 
                        Visible="False" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="YOUR PASSWORD IS :" Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
