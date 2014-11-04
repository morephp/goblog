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
          <ul class="premium-menu nav nav-list collapse in">
            <li ><a href="/admin/article/add"><span class="fa fa-caret-right"></span> 发布文章</a></li>
        <li ><a href="/admin/article/list"><span class="fa fa-caret-right"></span> 文章列表</a></li>
        <li ><a href="/admin/article/tag"><span class="fa fa-caret-right"></span> 标签管理</a></li>
      </ul>
        </li>
    <li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-user"></i> 用户管理<i class="fa fa-collapse"></i></a></li>
    <li>
          <ul class="accounts-menu nav nav-list collapse">
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
    <div class="stats">
          <p class="stat"><span class="label label-info">5</span> 文章　</p>
          <p class="stat"><span class="label label-success">27</span> 用户　</p>
          <p class="stat"><span class="label label-danger">15</span> 评论</p>
        </div>
    <h1 class="page-title">MorePHP TEAM</h1>
    <ul class="breadcrumb">
          <li><a href="/admin/main">后台界面</a> </li>
          <li class="active">系统首页</li>
        </ul>
  </div>
      <div class="main-content">
    <div class="panel panel-default"> <a href="#page-stats" class="panel-heading" data-toggle="collapse">系统状态</a>
          <div id="page-stats" class="panel-collapse panel-body collapse in">
        <div class="row">
              <div class="col-md-3 col-sm-6">
            <div class="knob-container">
                  <input class="knob" data-width="200" data-min="0" data-max="100" data-displayPrevious="true" value="1" data-fgColor="#5CB85C" data-readOnly=true;>
                  <h3 class="text-muted text-center">用户数</h3>
                </div>
          </div>
              <div class="col-md-3 col-sm-6">
            <div class="knob-container">
                  <input class="knob" data-width="200" data-min="0" data-max="100" data-displayPrevious="true" value="1" data-fgColor="#5BC0DE" data-readOnly=true;>
                  <h3 class="text-muted text-center">文章数</h3>
                </div>
          </div>
              <div class="col-md-3 col-sm-6">
            <div class="knob-container">
                  <input class="knob" data-width="200" data-min="0" data-max="100" data-displayPrevious="true" value="1" data-fgColor="#D9534F" data-readOnly=true;>
                  <h3 class="text-muted text-center">评论数</h3>
                </div>
          </div>
              <div class="col-md-3 col-sm-6">
            <div class="knob-container">
                  <input class="knob" data-width="200" data-min="0" data-max="50" data-displayPrevious="true" value="1" data-fgColor="#92A3C2" data-readOnly=true;>
                  <h3 class="text-muted text-center">友链数</h3>
                </div>
          </div>
            </div>
      </div>
        </div>
    <div class="row">
          <div class="col-sm-6 col-md-6">
        <div class="panel panel-default">
              <div class="panel-heading no-collapse">运行环境信息</div>
              <table class="table table-bordered table-striped">
            <tbody>
                  <tr>
                <td align="left">主机名称</td>
                <td>MOREPHP-PC</td>
              </tr>
                  <tr>
                <td align="left">Go语言版本</td>
                <td>go1.3</td>
              </tr>
                  <tr>
                <td align="left">操作系统</td>
                <td>windows (amd64)</td>
              </tr>
                  <tr>
                <td align="left">CPU数量</td>
                <td>4</td>
              </tr>
                <tr>
                <td align="left">Beego版本</td>
                <td>V1.41</td>
              </tr>
               <tr>
                <td align="left">系统版本信息</td>
                <td><span class="lable">V1.01</span></td>
              </tr>
                </tbody>
          </table>
            </div>
      </div>
          <div class="col-sm-6 col-md-6">
        <div class="panel panel-default"> <a href="#widget1container" class="panel-heading" data-toggle="collapse">最新博文</a>
              <div id="widget1container" class="panel-body collapse in">
            <h2>这是第一篇文章</h2>
            <p>感谢大家！</p>
            <p>２０１４.１１.２０</p>
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
