<!doctype html>
<html lang="zh">
    <head>
    <meta charset="utf-8">
    <title>{{.WebSiteName}} - 后台管理</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <link rel="icon" type="image/x-icon" href="/static/favicon.ico">
    <script src="/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/static/css/premium.css">
    <link rel="stylesheet" href="/static/css/bootstrap-markdown.min.css">
    </head>
    <body>
 {{str2html .Content}}
<div data-provide="markdown-editable">
         
</div>

<script type="text/javascript" src="/static/js/bootstrap-markdown-editor.js"></script> 
<script type="text/javascript" src="/static/js/bootstrap-markdown-to.js"></script> 
<script type="text/javascript" src="/static/js/bootstrap-markdown.js"></script> 
<script type="text/javascript" src="/static/js/bootstrap-markdown-main.js"></script> 
<script type="text/javascript" src="/static/js/bootstrapValidator.min.js"></script><br>
</body>
</html>