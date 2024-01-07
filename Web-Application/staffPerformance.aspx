<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffPerformance.aspx.cs" Inherits="Web_Application.staffPerformance" %>

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
              top: 33px;
             right: 295px;
            text-align: right;
            background-color: #ffffff;
            width: 1018px;
            height: 98px;
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
            top: 135px;
            right: 175px;
            text-align: right;
                height: 46px;
            width: 91px;
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
            <asp:HyperLink ID="lnkServices" runat="server" NavigateUrl="~/purchases.aspx">Purchases</asp:HyperLink>
            <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/staffPerformance.aspx">Staffs</asp:HyperLink>
            
        </div>
        <div>
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="245px" style="margin-left: 100px; margin-top: 148px;" Width="337px">
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
<img src="image.png" alt="" style="width: 114px; height: 103px; margin-left: 33px; margin-top: 22px"/>
 </div>
        <div class="top-right-labels">
        <div>
            <asp:Label ID="Label1" runat="server" Text="FullName:"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
       </div>
             <div>
    <asp:Button ID="Button2" runat="server" Text="Logout" OnClick="LogoutButton" BackColor="#ffff66" />
 </div>
            </div>
         

        <div class="textbox">
          <asp:TextBox ID="TextBox_SP1" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Salesperson ID"> </asp:TextBox >
           <asp:TextBox ID="TextBox_SP2" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Score"> </asp:TextBox >
           <asp:TextBox ID="TextBox_SP3" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Sale Count"> </asp:TextBox >
        </div>
        
        
        
       
        <div>
        
            <asp:Button ID="Button1" runat="server" Height="34px" style="margin-left: 623px; margin-top: 53px;" Text="Edit Score" Width="134px" BackColor="#ffff66" OnClick="ChangeScore" />
          </div>
        
        <div>
            <asp:Button ID="Button3" runat="server" Text="Refresh Table" OnClick="UpdateTable" style="margin-top: 38px; margin-bottom: 0px; margin-left: 618px;" Height="35px" BackColor="#ffff66" />
           </div>
        
    </form>
</body>
</html>
