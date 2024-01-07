<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Web_Application.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Page</title>
    <style>
     body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
  .navbar {
           position: absolute;
            overflow: hidden;
              top: 32px;
             right: 259px;
            text-align: right;
            background-color: #ffffff;
            width: 1080px;
            height: 97px;
        }

   .navbar a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            margin-right: 5px;
             border-bottom: 2px solid black;
        }

 label {
            display: block;
            margin-top: 10px;
        }
.top-right-labels {
            position: absolute;
            top: 164px;
            right: 158px;
            text-align: right;
                height: 0px;
            width: 81px;
        }
.username-label {
            margin-top: 5px; 
        }

   
        .form-control {
            margin-left: 214px;
            margin-top: 44px;
        }
.textbox .form-control {
        margin-left: 20px; /* Set margin bottom to 0 to remove the gap */
    }
.image {
            position: absolute;
            top: 0;
            right: 0;
            margin-top: 5px; /* Adjust the top margin for proper alignment */
            margin-right: 300px; /* Adjust the right margin for proper alignment */
            width: 5px; /* Adjust the width of the image */
            height: 5px; /* Maintain aspect ratio */
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/myCustomers.aspx">Customers</asp:HyperLink>
            <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/products.aspx">Products</asp:HyperLink>
            <asp:HyperLink ID="lnkServices" runat="server" NavigateUrl="~/purchases.aspx">Purchasess</asp:HyperLink>
            
        </div>
        <div>
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="245px" style="margin-left: 547px; margin-top: 143px;" Width="337px">
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
                  <div class="image">
<img src="image.png" alt="" style="width: 120px; height: 113px; margin-left: 63px; margin-top: 22px"/>
 </div>
        <div class="top-right-labels">
         <div class="fullname-label">
            <asp:Label ID="Label_prod1" runat="server" Text="FullName:"></asp:Label>
        </div>
        <div class="username-label">
            <asp:Label ID="Label_prod2" runat="server" Text="Username:"></asp:Label>
          </div>
          </div>
           <div class="textbox">
      <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" Height="35px" Width="374px" Text="Product Code"></asp:TextBox >
      <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="New Stock"> </asp:TextBox >
            </div>

           <div>
            <asp:Button ID="Button_prod1" runat="server" Text="Update stock amount" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdateStockAmount" BackColor="#ffff66"  />
            </div>
                 <div class="textbox">
      <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Product Code"> </asp:TextBox >
      <asp:TextBox ID="TextBox41" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Price"> </asp:TextBox >
      
             </div>
        
            <asp:Button ID="Button_prod3" runat="server" Text="Update Product Price" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdatePrice" BackColor="#ffff66" />
            <asp:Button ID="Button1" runat="server" Text="Refresh" style="margin-left: 550px; margin-top: 82px" Width="276px" OnClick="UpdateTable" BackColor="#ffff66" />

       
       

            <asp:Button ID="Button_prod2" runat="server" Text="Logout" style="margin-left: 1134px; margin-top: 61px" OnClick="LogoutButton" BackColor="#ffff66" />
            
        
    </form>
</body>
</html>

