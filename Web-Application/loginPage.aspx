<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Web_Application.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; 
            padding: 0;
        }

        .login-container {
            background-color: #ef895f;
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .login-container h2 {
            text-align: center;
            color: #333;
        }

        .image img {
            display: block;
            margin: 0 auto;
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
        }

     

        .entering label {
            display: block;
            margin-bottom: 6px;
            color: #333;
        }

         .form-control {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .button {
            text-align: center;
        }

       

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
            
        }

        .form-control {
            margin-top: 12px;
        }

          #Button1 {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
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
            <asp:Label ID="Label1" runat="server" ForeColor="Red" CssClass="error-message"></asp:Label>
            <div class="entering">
            <label for="txtUsername"> Username:</label>
                 
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="35px" Width="378px"></asp:TextBox>

            <label for="txtPassword"> Password:</label>
                
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control" Height="35px" Width="378px"></asp:TextBox>
           </div>
            <div class="button">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1Click" CausesValidation="false"  Height="45px" style="margin-left: 0px; margin-right: 11px; margin-top: 21px" Width="213px"/>
            </div>
           
           
           
        </div>
    </form>
</body>
</html>

