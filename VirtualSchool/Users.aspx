<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="VirtualSchool.Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 245px">
    
        <asp:Label ID="Label_Welcome" runat="server" style="font-weight: 700" 
            Text="Welcome to Virtual School (TM)...!!!"></asp:Label>
        <br />
        <asp:Button ID="B_Logout" runat="server" onclick="B_Logout_Click" 
            Text="Logout" />
    
    </div>
    </form>
</body>
</html>
