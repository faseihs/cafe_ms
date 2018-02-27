<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginStaff.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/index.aspx"  OnAuthenticate="Login1_Authenticate" ValidateRequestMode="Disabled"></asp:Login>
    </form>
</body>
</html>
