<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            font-family: 楷体_GB2312;
            font-size: 30pt;
        }
        .text 
        {
            position: absolute; right: 0px; top: 0px;
        }
        .auto-style1 {}
        </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1">
    <p class="style1">
        欢迎访问“ASP.Net梦工厂”聊天室</p>
    <p style="text-align: left">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="text"></asp:Label>
    </p>
    <asp:Label ID="Label1" runat="server" Text="请输入您的用户名："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="请输入您的密码:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="注册" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="登陆" onclick="Button1_Click" CssClass="auto-style1" Height="21px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="退出" onclick="Button2_Click" />
    </form>
</body>
</html>
