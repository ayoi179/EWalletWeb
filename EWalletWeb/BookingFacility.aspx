<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingFacility.aspx.cs" Inherits="EWalletWeb.BookingFacility" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 678px;
            text-align: right;
        }
        .auto-style3 {
            width: 693px;
            text-align: left;
        }
        .auto-style4 {
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .auto-style6 {
            text-align: center;
            height: 447px;
           
        }
        .auto-style7 {
            text-align: center;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
        <div class="auto-style1">
            <br />
           <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/RegisterPage.aspx">Sign Up</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AddVehicle.aspx">Vehicle</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/AddParking.aspx">Parking</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/BookingFacility.aspx">Booking</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Reload.aspx">Reload</asp:LinkButton>
            <br />
            <br />
            <br />
            <h1 class="auto-style7">Booking Facility</h1>
            
            <br />
            <br />
                <table style="border:0";>
                <tr>
                    <td class="auto-style2"><strong>Amount</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style2"><strong>Date</strong></td>
                    <td class="auto-style3"><asp:TextBox ID="txtDate" runat="server" ReadOnly = "true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Facilities</strong></td>
                    <td class="auto-style3"><asp:ListBox ID="ListBox3" runat="server" Height="49px" Width="200px"></asp:ListBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Purpose</strong></td>
                    <td class="auto-style3"><asp:ListBox ID="ListBox4" runat="server" Height="44px" Width="200px"></asp:ListBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Payment Type</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

            </div>
        
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="120px" CssClass="auto-style4" />
        </div>
    </form>
</body>
</html>
