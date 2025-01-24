<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<!-- Coding By CodingNepal - www.codingnepalweb.com -->
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>School Login Form </title>
    <style>
        input[type=submit],input[type=button],input[type=reset] {
			 background: #fff;
  color: #000;
  font-weight: 700;
  border: none;
  padding: 12px 20px;
  cursor: pointer;
  border-radius: 3px;
  font-size: 16px;
  border: 2px solid transparent;
  transition: 0.3s ease;			
}
        button:hover {
  color: #fff;
  border-color: #fff;
  background: rgba(255, 255, 255, 0.15);
}
    </style>
  <link rel="stylesheet" href="style.css">
</head>
<body>
    <form id="form1" runat="server">
  <div class="wrapper">
      <h2>Login</h2>
        <div class="input-field">
        <asp:TextBox ID="TextBox1" placeholder="Enter your Login Id" runat="server" ></asp:TextBox>
&nbsp;
      </div>
      <div class="input-field">
        <asp:TextBox ID="TextBox2" placeholder="Enter your Password" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
      </div>
      
     <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click"/>
      </button>
      <div class="register">
        <p>Don't have an account? <a href="Register.aspx">Register</a></p>
      </div>
  </div>
    </form>
</body>
</html>