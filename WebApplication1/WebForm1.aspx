<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 174px;
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img class="auto-style1" src="logo.png" /><br />
            <br />
            Email ID&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Password&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Log In" />
        </p>
    </form>
</body>
</html>
