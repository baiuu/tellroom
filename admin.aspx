<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="清空聊天记录" />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="uesr" DataValueField="uid">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Web1.DataClassesDataContext" EntityTypeName="" TableName="login">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" InsertVisible="False" ReadOnly="True" SortExpression="uid" />
                <asp:BoundField DataField="uesr" HeaderText="uesr" SortExpression="uesr" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Web1.DataClassesDataContext" EntityTypeName="" TableName="tell">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="tid" DataSourceID="LinqDataSource2">
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="tell1" HeaderText="tell1" SortExpression="tell1" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="tid" HeaderText="tid" InsertVisible="False" ReadOnly="True" SortExpression="tid" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除用户" />
    
    </div>
    </form>
</body>
</html>
