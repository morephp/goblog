<!doctype html>
<html lang=zh>
<head>
<meta charset="utf-8">
<title>{{.WebSiteName}}</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="MorePHP TEAM,LeShan,SiChuan,Blog">
<meta name="author" content="MorePHP TEAM">
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css">
<link rel="stylesheet" href="/static/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="/static/css/theme.css">
<link rel="stylesheet" type="text/css" href="/static/css/premium.css">
<script src="/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
</head>

<body class=" theme-blue">
<style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>
<script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
    </script>
<div class="navbar navbar-default" role="navigation">
  <div class="navbar-header"> </div>
  <div class="navbar-collapse collapse" style="height: 1px;"> </div>
</div>
</div>
<div class="dialog">
  <div class="panel panel-default">
    <p class="panel-heading no-collapse">用户登录</p>
    <div class="panel-body">
      <form action="/admin/login" method="post">
        <div class="form-group">
          <label>用户名</label>
          <input name="username" type="text" class="form-control span12" id="username">
        </div>
        <div class="form-group">
          <label>密  码</label>
          <input name="password" type="password" class="form-control span12 form-control" id="password">
        </div>
        <input type="submit" class="btn btn-primary pull-right" value="登 录">
        <label class="remember-me">
          <input type="checkbox">
          记住我</label>
        <div class="clearfix"></div>
      </form>
    </div>
  </div>
</div>
<script src="/static/js/bootstrap.js"></script> 
<script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body>
</html>
