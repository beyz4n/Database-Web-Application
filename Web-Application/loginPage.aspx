<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Web_Application.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Text="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Text="Password"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1Click" Text="Sign In" CausesValidation="false" />
        </div>
    </form>
</body>
</html>
