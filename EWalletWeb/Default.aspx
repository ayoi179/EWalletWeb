<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
</script>
<form id="form1" runat="server">
    <p>
        No Plate :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Colour :
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>White</asp:ListItem>
            <asp:ListItem>Black</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Type<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Perodua</asp:ListItem>
            <asp:ListItem>Proton</asp:ListItem>
            <asp:ListItem>BMW</asp:ListItem>
            <asp:ListItem>Lamborghini</asp:ListItem>
        </asp:DropDownList>
    </p>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
</form>
