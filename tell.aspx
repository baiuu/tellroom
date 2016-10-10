<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tell.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .text 
        {
            position: absolute; right: 0px; top: 0px;
        }
        .auto-style1 {
            margin-right: 0px;
            margin-top: 343px;
        }
        .auto-style2 {}
        .auto-style3 {}
    </style>
    <meta http-equiv="refresh" content="10"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="48px" 
        Width="359px" CssClass="auto-style1"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="text"></asp:Label>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="发送" CssClass="auto-style2" Width="38px" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Height="20px" OnClick="Button2_Click" Text="退出" Width="42px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="管理台" Visible="False" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </div>
    </form>
</body>
</html>
