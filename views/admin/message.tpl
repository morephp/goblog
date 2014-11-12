<!doctype html>
<html lang="zh">
<head>
<meta charset="utf-8">
<title>{{.WebSiteName}} - 后台管理</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css">
<link rel="stylesheet" href="/static/css/font-awesome.css">
<link rel="icon" type="image/x-icon" href="/static/favicon.ico">
<link rel="stylesheet" type="text/css" href="/static/css/theme.css">
</head>
<body class=" theme-blue">
</br>
<div class="container">
  <div class="dialog">
    <div class="panel panel-default">
      <p class="panel-heading no-collapse"><label class="fa fa-fw  fa-bell-o"></label><strong class="text-warning"> 提示信息</strong></p>
      <div class="panel-body">
       <br />
        <div class="text-{{if eq .type 0}}danger{{end}}{{if eq .type 1}}success{{end}}{{if eq .type 2}}warning{{end}}{{if eq .type 3}}info{{end}} text-center" role="alert"> {{.msg}} </div>
        <br />
        <br />
        <div class="text-center"> <a href="{{.redirect}}">如果您的浏览器没自动跳转，请点击这里</a></div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
		setTimeout("window.location.href='{{.redirect}}'", 3000);
</script>
</body>
</html>