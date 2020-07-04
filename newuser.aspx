<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 66px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            margin-left: 0px;
        }
        .style4
        {
            width: 120px;
        }
        .style5
        {
            width: 366px;
        }
        .style6
        {
            width: 474px;
        }
        .style7
        {
            width: 356px;
        }
        .style8
        {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
        <table align="center" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    <div>
        <table class="style2">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="style3" 
                        Height="123px" ImageUrl="~/img/logo.png" PostBackUrl="~/f_page.aspx" 
                        Width="225px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <br />
        <br />
    </div>
    <div>
        <table class="style2">
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center" style="font-weight: bold; font-size: large">
                    ACCOUNT DETAILS</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    <div>
        <table class="style2">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5" style="font-size: medium; font-weight: bold">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="127px" 
                        ImageUrl="~/img/images.png" Width="157px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="365px" BorderStyle="Solid" 
                        Font-Bold="True" Height="27px" placeholder = "USER NAME"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate = "TextBox1" Display = "Dynamic"   
                        ErrorMessage="*NAME SHOULD BE IN ALPHABETS" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate = "TextBox1" Display = "Dynamic"
                        ErrorMessage="*NAME FEILD CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="366px" BorderStyle="Solid" 
                        Font-Bold="True" Height="27px" placeholder = "EMAIL ID"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate = "TextBox2" Display = "Dynamic"
                        ErrorMessage="*EMAIL FEILD CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="366px" BorderStyle="Solid" 
                        Font-Bold="True" Height="27px" placeholder = "CONTACT NO."></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate = "TextBox3" Display = "Dynamic"
                        ErrorMessage="*WRONG INPUT" ValidationExpression="^[0-9]*$" ></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="366px" BorderStyle="Solid" 
                        Font-Bold="True" Height="27px" TextMode="Password" placeholder = "PASSWORD"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate = "TextBox4" Display = "Dynamic"
                        ErrorMessage="*CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <table class="style2">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" CssClass="style8" 
                        Font-Bold="True" Height="27px" TextMode="Password" Width="366px" placeholder = "CONFIRM PASSWORD"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate = "TextBox5" Display = "Dynamic"
                        ErrorMessage="*CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                        Height="27px" Width="366px">
                        <asp:ListItem>WHAT IS YOUR NATIONALITY ?</asp:ListItem>
                        <asp:ListItem>WHAT IS YOUR PET NAME?</asp:ListItem>
                        <asp:ListItem>WHAT IS YOUR FAV. COLOUR ?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Font-Bold="True" 
                        Height="27px" Width="366px" placeholder = "ANSWER"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate = "TextBox6" Display = "Dynamic"
                        ErrorMessage="*CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Button ID="Button1" runat="server" BackColor="#669900" BorderStyle="None" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="27px" 
                        onclick="Button1_Click" Text="CREATE ACCOUNT" Width="365px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
