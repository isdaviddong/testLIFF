<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication3._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>test LIFF</title>
    <script src="https://d.line-scdn.net/liff/1.0/sdk.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script>
        function initializeApp(data) {
            $('#userid').val(data.context.userId);
        }

        $(function () {
            liff.init(function (data) {
                initializeApp(data);
            });
        });


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-6">
                <input class="form-control" type="text" id="userid" />   <br />
                 <input class="form-control" type="text" id="QueryString" value="<%=ViewState["QueryString"] %>" />
            </div>
        </div>
    </form>
</body>
</html>
