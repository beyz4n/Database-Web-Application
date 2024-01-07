<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myCustomers.aspx.cs" Inherits="Web_Application.myCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
        <title>Customers Page</title>
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
             right: 303px;
            text-align: right;
            background-color: #ffffff;
                height: 114px;
                width: 999px;
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
                margin-top: 43px;
            }

 label {
            display: block;
            margin-top: 10px;
        }
.top-right-labels {
            position: absolute;
            top: 157px;
            right: 214px;
            text-align: right;
                height: 55px;
                width: 87px;
            }
.username-label {
            margin-top: 5px; 
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
        <br />
        <br />
        <br />
        <div class="navbar">
            <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/myCustomers.aspx">Customers</asp:HyperLink>
            <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/products.aspx">Products</asp:HyperLink>
            <asp:HyperLink ID="lnkServices" runat="server" NavigateUrl="~/purchases.aspx">Purchases</asp:HyperLink>
            
        </div>
        <div>
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="245px" style="margin-left: 100px; margin-top: 150px; margin-bottom: 172px;" Width="337px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#00ffff" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#00ffff" />
            <SortedAscendingHeaderStyle BackColor="#00ffff" />
            <SortedDescendingCellStyle BackColor="#00ffff" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
            <asp:Button ID="Buttonc3" runat="server" Text="Back To Customers"  OnClick="GetCustomers" BackColor="#ffff66" />
       <div class="image">
<img src="image.png" alt="" style="width: 131px; height: 121px; margin-left: 11px; margin-top: 22px"/>
 </div>
        </div>
        <div class="top-right-labels">
          <div class="fullname-label">
            <asp:Label ID="Label1" runat="server" Text="FullName:"></asp:Label>
              </div>
            <div class="username-label">
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
         </div>
             <div>
         <asp:Button ID="Button2" runat="server" Text="Logout"  OnClick="LogoutButton" BackColor="#ffff66" />
           </div>
            </div>
         <div>
            <asp:Button ID="Button1" runat="server" Text="Displays the top 10 customers" Style="margin-left: 578px; margin-top: 0px; margin-bottom: 15px;" Width="235px" OnClick="DisplayTop10Customer" Height="38px" BackColor="#ffff66" />
          </div> 
        
    </form>
</body>
</html>
