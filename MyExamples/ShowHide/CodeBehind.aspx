<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CodeBehind.aspx.cs" Inherits="ShowHide_CodeBehind" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .outer_div
        {
            width: 150px;
            height: 30px;
            line-height: 30px;
            cursor: pointer;
            border: solid 1px silver;
        }
        .showhide_div
        {
            width: 200px;
            height: 100px;
            background-color: #f2f2f2;
            border: solid 1px #565656;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnClikShowHide" runat="server" Text="Click me" OnClick="btnClikShowHide_Click" />
        <asp:Panel ID="Panel1" runat="server" class="showhide_div" Visible="false">
            Panel to show/hide
        </asp:Panel>
    </div>
    </form>
</body>
</html>
