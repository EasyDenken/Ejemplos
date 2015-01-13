<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UsingJquery.aspx.cs" Inherits="ShowHide_UsingJquery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .outer_div
        {
        	width:150px;
        	height:30px;
        	line-height:30px;
        	cursor:pointer;
        	border:solid 1px silver;
        }
        .showhide_div
        {
            width: 200px;
            height: 100px;
            background-color: #f2f2f2;
            border: solid 1px #565656;
        }
    </style>

    <script src="jquery-1.4.2.js" type="text/javascript"></script>
    <script type="text/javascript">

        

    $(document).ready(function()
    {
        //$('.showhide_div').hide();//initially hiding the div
        $('.outer_div').click(function()
        {
            $('.showhide_div').toggle("1000"); // or you can use show(1000) or hide(1000) functions            
        });
    });

    function Hola() {        
      $('.showhide_div').toggle("1000"); // or you can use show(1000) or hide(1000) functions        
    }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="ddl" runat="server" OnSelectedIndexChanged="ddl_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem>open</asp:ListItem>
            <asp:ListItem>close</asp:ListItem>
        </asp:DropDownList>
    
        <asp:Button ID="Button1" runat="server" Text="Button"/>
        <div class="outer_div">
        click here to show/hide
    </div>
    <div class="showhide_div" style="display:none">
    <h3>I am show/hide div</h3>
    </div>
    </form>
</body>
</html>
