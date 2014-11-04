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
          <li class="dropdown hidden-xs"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> MorePHP TEAM <i class="fa fa-caret-down"></i> </a>
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
<div class="sidebar-nav">
      <ul>
    <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw  fa-bell-o"></i> 系统信息<i class="fa fa-collapse"></i></a></li>
    <li>
          <ul class="dashboard-menu nav nav-list collapse in">
        <li ><a href="/admin/main"><span class="fa fa-caret-right"></span> 博客首页</a></li>
        <li><a href="/admin/info"><span class="fa fa-caret-right"></span> 系统信息</a></li>
      </ul>
        </li>
    <li data-popover="true" data-content="" rel="popover" data-placement="right"><a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-pencil-square-o"></i> 内容管理 <span class="label label-info">+3</span></a></li>
    <li>
          <ul class="premium-menu nav nav-list collapse">
            <li ><a href="/admin/article/add"><span class="fa fa-caret-right"></span> 发布文章</a></li>
        <li ><a href="/admin/article/list"><span class="fa fa-caret-right"></span> 文章列表</a></li>
        <li ><a href="/admin/article/tag"><span class="fa fa-caret-right"></span> 标签管理</a></li>
      </ul>
        </li>
    <li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-user"></i> 用户管理<i class="fa fa-collapse"></i></a></li>
    <li>
          <ul class="accounts-menu nav nav-list collapse in">
        <li ><a href="/admin/user/add"><span class="fa fa-caret-right"></span> 添加用户</a></li>
        <li ><a href="/admin/user"><span class="fa fa-caret-right"></span> 用户列表</a></li>
      </ul>
        </li>
    <li><a href="/admin/discuss" class="nav-header"><i class="fa fa-fw fa-comment"></i> 评论管理</a></li>
    
    <li><a href="#" data-target=".link-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-heart"></i> 友链管理<i class="fa fa-collapse"></i></a> </li>
      <li>
          <ul class="link-menu nav nav-list collapse">
        <li ><a href="/admin/link/add"><span class="fa fa-caret-right"></span> 添加友链</a></li>
        <li ><a href="/admin/link/list"><span class="fa fa-caret-right"></span> 友链列表</a></li>
      </ul>
        </li>
        
    <li><a href="#" data-target=".legal-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i> 系统管理<i class="fa fa-collapse"></i></a></li>
    <li>
          <ul class="legal-menu nav nav-list collapse">
        <li ><a href="/admin/config"><span class="fa fa-caret-right"></span> 系统设置</a></li>
      </ul>
        </li>
        
    <li><a href="/admin/help" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> 系统帮助</a></li>
  </ul>
    </div>
<div class="content">
        <div class="header">
            
            <h1 class="page-title">用户管理</h1>
                    <ul class="breadcrumb">
            <li><a href="/admin/main">系统首页</a> </li>
            <li class="active">用户管理</li>
        </ul>

        </div>
        <div class="main-content">
            
<div class="btn-toolbar list-toolbar">
    <button class="btn btn-primary"><i class="fa fa-plus"></i> 添加用户</button>
  <div class="btn-group">
  </div>
</div>
<table class="table">
  <thead>
    <tr>
      <th>#</th>
      <th>帐　号</th>
      <th>昵　称</th>
      <th>团　队</th>
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Mark</td>
      <td>Tompson</td>
      <td>the_mark7</td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
    <tr>
      <td>2</td>
      <td>Ashley</td>
      <td>Jacobs</td>
      <td>ash11927</td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
    <tr>
      <td>3</td>
      <td>Audrey</td>
      <td>Ann</td>
      <td>audann84</td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
    <tr>
      <td>4</td>
      <td>John</td>
      <td>Robinson</td>
      <td>jr5527</td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
    <tr>
      <td>5</td>
      <td>Aaron</td>
      <td>Butler</td>
      <td>aaron_butler</td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
    <tr>
      <td>6</td>
      <td>Chris</td>
      <td>Albert</td>
      <td>cab79</td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
  </tbody>
</table>

<ul class="pagination">
  <li><a href="#">&laquo;</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">&raquo;</a></li>
</ul>

<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">消息确认</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>你确认要删除该用户吗?<br>该操作不能恢复.</p>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取　消</button>
            <button class="btn btn-danger" data-dismiss="modal">删 除</button>
        </div>
      </div>
    </div>
</div>

    <footer>
          <hr>
          <p class="pull-right">&nbsp;</p>
          <p>© 2014 <a href="http://www.morephp.com" target="_blank">MorePHP TEAM</a></p>
        </footer>
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
