<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script src="Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $.ajaxError(function (event, request, options, error) {
                //Put error processing here
            });

            //Call to retrieve data
            $.ajax({
                url: "Services/WebServiceAjax.asmx/GetWeather",
                dataType: "text",
                type: "POST",
                data: {},
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    $("#content").html(data);
                }

            });

            //Call to send data then retrieve based upon what was sent
            $.ajax({
                url: "Services/WebServiceAjax.asmx/GetWeatherCity",
                dataType: "text",
                type: "POST",
                data: { city: "NewYork" },
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    $("#cityWeather").html(data);
                }

            });

            //Call w/ async and timeout options
            $.ajax({
                url: "Services/WebServiceAjax.asmx/GetWeatherCity",
                dataType: "text",
                type: "POST",
                data: { city: "NewYork" },
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    $("#async").html(data);
                },
                async: false,
                timeout: 2000

            });

            //Setup global option. Multiple options can be set
            $.ajaxSetup({
                async: false
            });

            //This call would now be done asynchrounously because the global
            //option was set above
            $.ajax({
                url: "Services/WebServiceAjax.asmx/GetWeatherCity",
                dataType: "text",
                type: "POST",
                data: { city: "NewYork" },
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    $("#cityWeather").html(data);
                }

            });


        });

    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Demo jQuery AJAX
    </h2>
    <div id="content">
    </div>
    <div id="cityWeather">
    </div>
    <div id="async">
    </div>
</asp:Content>
