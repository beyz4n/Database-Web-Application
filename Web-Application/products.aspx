<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Web_Application.products" %>

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
          
            <asp:Label ID="Label_prod1" runat="server" Text="FullName:"></asp:Label>
          
        </div>



        <p>
            <asp:Label ID="Label_prod2" runat="server" Text="Username:"></asp:Label>
          
             </p>
 
      <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Product Code"> </asp:TextBox >
      <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="New Stock"> </asp:TextBox >
     

<p>
            <asp:Button ID="Button_prod1" runat="server" Text="Update stock amount" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdateStockAmount" />

                 </p>
 
      <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Product Code"> </asp:TextBox >
      <asp:TextBox ID="TextBox41" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Price"> </asp:TextBox >
     

<p>
            <asp:Button ID="Button_prod3" runat="server" Text="Update Product Price" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdatePrice" />
            <asp:Button ID="Button1" runat="server" Text="Refresh" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdateTable" />

            <asp:Button ID="Button_prod2" runat="server" Text="Logout" style="margin-left: 1134px; margin-top: 0px" OnClick="LogoutButton" />
            
        </p>
    </form>
</body>
</html>

</html>
