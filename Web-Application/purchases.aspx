<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchases.aspx.cs" Inherits="Web_Application.purchases" %>

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
           <asp:GridView ID="GridViewpur1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="245px" style="margin-left: 547px" Width="337px">
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
          
            <asp:Label ID="Labelp1" runat="server" Text="FullName:"></asp:Label>
          
        </div>



        <p>
            <asp:Label ID="Labelp2" runat="server" Text="Username:"></asp:Label>
            <asp:Button ID="Buttonp2" runat="server" Text="Logout" style="margin-left: 1134px; margin-top: 0px" OnClick="LogoutButton" />
            
        </p>

          <p>
 
      <asp:TextBox ID="TextBoxp1" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Critical Amount"> </asp:TextBox >
      <asp:TextBox ID="TextBoxp2" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Critical Price"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp3" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Discount Amount"> </asp:TextBox >
      <asp:TextBox ID="TextBoxp4" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Sale ID"> </asp:TextBox >

</p>
            <asp:Button ID="Buttonp3" runat="server" Text="Update Payment Price" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdatePaymentPrice" />

                  <p>
 
      <asp:TextBox ID="TextBoxp5" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Sale ID"> </asp:TextBox >
      <asp:TextBox ID="TextBoxp6" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Product Code"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp7" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Amount"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp9" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Payment Method"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp10" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Payment Price"> </asp:TextBox >
         <asp:TextBox ID="TextBoxp11" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Rating"> </asp:TextBox >


</p>


        <asp:Button ID="Buttonp4" runat="server" Text="Add payment" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="AddPayment" />
        <asp:Button ID="Buttonp5" runat="server" Text="Refresh Table" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdateTable" />






    </form>
</body>
</html>