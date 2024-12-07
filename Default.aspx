<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Label text box button demo</title>
</head>
<body>
<form runat="server">
    <asp:Label runat="server">Name</asp:Label>
    <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
    <asp:Button ID="Button" runat="server" Text="Greet"/><br/><br/>
    <asp:Label ID="Message" runat="server"></asp:Label>
</form>
<script runat="server">
    void Page_Load(Object sender, EventArgs e)
    {
        Button.Click += Greet;
    }
    void Greet(Object sender, EventArgs e)
    {
        if (TextBox.Text == "")
        {
            Message.Text = "Enter your name";
            return;
        }

        Message.Text = "Hello " + TextBox.Text;
    }
</script>
</body>
</html>