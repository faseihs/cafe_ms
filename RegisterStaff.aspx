<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterStaff.aspx.cs" Inherits="RegisterStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

    <h2>Register Staff</h2>
    <div>
        Username:
    <asp:TextBox ID="RegUsername" placeholder="Username" runat="server" type="text" style="margin-left: 3px"></asp:TextBox><br /><br />
        Email:
    <asp:TextBox ID="RegEmail" placeholder="Email" runat="server" type="email" style="margin-left: 29px"></asp:TextBox><br /><br />
        Password:
    <asp:TextBox ID="RegPassword" placeholder="Password" runat="server" type="password" style="margin-left: 6px"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" style="margin-left: 142px" Width="54px" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
