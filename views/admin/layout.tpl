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
    <script src="/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="/static/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>
    <link rel="stylesheet" type="text/css" href="/static/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/static/css/premium.css">
    </head>
    <body class=" theme-blue">
<script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
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
      <div class="navbar-header"> <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-windows"></span>&nbsp;&nbsp;MorePHP TEAM Blog</span></a></div>
      <div class="navbar-collapse collapse" style="height: 1px;">
    <ul id="main-menu" class="nav navbar-nav navbar-right">
          <li class="dropdown hidden-xs"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> {{.NickName}} <i class="fa fa-caret-down"></i> </a>
        <ul class="dropdown-menu">
              <li><a href="./">我的帐号</a></li>
              <li class="divider"></li>
              <li class="dropdown-header">管理面板</li>
              <li><a href="./">用户管理</a></li>
              <li><a href="./">安全设置</a></li>
              <li class="divider"></li>
              <li><a tabindex="-1" href="/admin/logout">退出系统</a></li>
            </ul>
      </li>
        </ul>
  </div>
    </div>
</div>
{{.Sidebar}}
{{.LayoutContent}}
<script src="/static/js/bootstrap.js"></script> 
<script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body>
</html>
