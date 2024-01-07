<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchases.aspx.cs" Inherits="Web_Application.purchases" %>

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
              top: 25px;
             right: 280px;
            text-align: right;
            background-color: #ffffff;
                width: 1035px;
                height: 102px;
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
            top: 142px;
            right: 151px;
            text-align: right;
                height: 49px;
                width: 87px;
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
           <asp:GridView ID="GridViewpur1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="245px" style="margin-left: 100px; margin-top: 163px;" Width="337px">
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
<img src="image.png" alt="" style="width: 122px; height: 100px; margin-left: 53px; margin-top: 22px"/>
 </div>
         <div class="top-right-labels">
        <div>
          
            <asp:Label ID="Labelp1" runat="server" Text="FullName:"></asp:Label>
          
        </div>
              <div>
            <asp:Label ID="Labelp2" runat="server" Text="Username:"></asp:Label>
         
            
         </div>
             <div>
              <asp:Button ID="Buttonp2" runat="server" Text="Logout"  OnClick="LogoutButton" Height="31px" BackColor="#ffff66" />
              </div>
          </div>
           <div class="textbox">
       <asp:TextBox ID="TextBoxp1" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Critical Amount"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp2" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Critical Price"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp3" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Discount Amount"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp4" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Sale ID"> </asp:TextBox >
           </div>

            <asp:Button ID="Buttonp3" runat="server" Text="Update Payment Price" style="margin-left: 550px; margin-top: 0px" Width="276px" OnClick="UpdatePaymentPrice" BackColor="#ffff66"/>

                  
         <div class="textbox">
       <asp:TextBox ID="TextBoxp5" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Sale ID"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp6" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Product Code"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp7" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Amount"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp9" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Payment Method"> </asp:TextBox >
       <asp:TextBox ID="TextBoxp10" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Rating"> </asp:TextBox >
         <asp:TextBox ID="TextBoxp11" runat="server" CssClass="form-control" Height="35px" Width="378px" Text="Customer ID"> </asp:TextBox >
         </div>


        <asp:Button ID="Buttonp4" runat="server" Text="Add payment" style="margin-left: 550px; margin-top: 45px" Width="276px" OnClick="AddPayment" Height="32px" BackColor="#ffff66" />
        <asp:Button ID="Buttonp5" runat="server" Text="Refresh Table" style="margin-left: 550px; margin-top: 56px" Width="276px" OnClick="UpdateTable" Height="30px" BackColor="#ffff66"/>
           
    </form>
</body>
</html>