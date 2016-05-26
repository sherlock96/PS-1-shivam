<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 154px; height: 32px">
    <form id="form1" runat="server">

    <h1 style="height: 35px; width: 405px"> Welcome to the Login Page</h1>
     <asp:Label ID="lblUserId" runat="server" Text="Login Id"></asp:Label>
    <asp:TextBox ID="txtUserId" runat="server" Width="128px" 
        Style="margin-top: 10px; margin-bottom: 10px; float: left" 
        ></asp:TextBox>
    <br />
    
       <p>
         <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>  
      </p>
      <p>
         <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"  
            Width="128px"></asp:TextBox>
       </p>
    <asp:Button ID="Button1" runat="server"  Text="Register" OnClick="Button1_click" />
    <asp:Label ID="lblStatus" runat="server" Text="" ></asp:Label>
    </form>
</body>
</html>
