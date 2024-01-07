<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myCustomers.aspx.cs" Inherits="Web_Application.myCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/myCustomers.aspx">Customers</asp:HyperLink>
            <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/products.aspx">Products</asp:HyperLink>
            <asp:HyperLink ID="lnkServices" runat="server" NavigateUrl="~/purchases.aspx">Purchasess</asp:HyperLink>
            
        </div>
        <div>
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="245px" style="margin-left: 547px" Width="337px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#00ffff" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#00ffff" />
            <SortedAscendingHeaderStyle BackColor="#00ffff" />
            <SortedDescendingCellStyle BackColor="#00ffff" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
       
        </div>
        <div>
          
            <asp:Label ID="Label1" runat="server" Text="FullName:"></asp:Label>
          
        </div>



        <p>
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
          
   
            <asp:Button ID="Button1" runat="server" Text="Displays the top 10 customers" Style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="DisplayTop10Customer" />
          
   
            <asp:Button ID="Button2" runat="server" Text="Logout" style="margin-left: 1134px; margin-top: 0px" OnClick="LogoutButton" />
            
        </p>
    </form>
</body>
</html>
