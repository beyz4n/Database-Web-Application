<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Web_Application.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            height: 600px;
             justify-content: center;
            align-items: center;
             min-height: 100px;
   
        }

        .login-container {
            background-color: #fff;
            border-radius: 5px;
            padding: 200px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: rgb(236, 164, 113);
            
             padding: 30px 40px;
            height: 447px;
        }

        h2 {
          color: #1f0a42;
         font-size: 36px;
          text-align: center;
        }

        label {
            display: block;
            margin-top: 0px;
        }

        .entering {
            width: 100%;
            padding: 20px;
            
            box-sizing: border-box;
             position: relative;
            top: 9px;
            left: 70px;
             width: 377px;
             height: 10px; 
            
        }

        .button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #4caf50;
            padding: 30px;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            height: 256px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
            
        }

        .form-control {
            margin-top: 12px;
        }

        
          .image {
           text-align: center;
    
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="image">
            <img src="image.png" alt=""/>
             </div>
            <h2>Login Page</h2>
            
            <div class="entering">
            <label for="txtUsername">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username:</label>
                 
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="35px" Width="378px"></asp:TextBox>

            <label for="txtPassword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</label>
                
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control" Height="35px" Width="391px"></asp:TextBox>
           </div>
            <div class="button">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CausesValidation="false"  Height="45px" style="margin-left: 152px; margin-right: 11px; margin-top: 177px" Width="213px"/>
            </div>
           
           
           
        </div>
    </form>
</body>
</html>

