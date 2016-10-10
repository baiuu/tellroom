<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sgin.aspx.cs" Inherits="sgin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h1>“ASP.Net梦工厂”聊天室注册</h1>
        <p>
            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            密码:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br />确认密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox><br />E-Mail:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="清空" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
        </p>
    
    </div>
    </form>
</body>
</html>
