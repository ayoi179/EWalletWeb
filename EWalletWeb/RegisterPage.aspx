<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="EWalletWeb.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 324px;
        }
        .auto-style1 {
            color: #0000FF;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            background-color: #0066FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 319px; text-align: center;">
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
            <h1 class="auto-style1">Register</h1>
            <br />
            <br />
            <strong>Email</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <strong>Password</strong>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" style="color: #FFFFFF; " CssClass="auto-style2" OnClick="Button1_Click1" />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
