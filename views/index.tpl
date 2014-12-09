<!doctype html>
<html lang="zh">
<head>
<meta charset="utf-8">
<title>MorePHP TEAM Blog</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/font-awesome.min.css">
<link rel="icon" type="image/x-icon" href="/static/favicon.ico">
<script src="/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/static/js/modernizr.custom.js" type="text/ecmascript"></script>
<link rel="stylesheet" type="text/css" href="/static/css/style.css" />
<link rel="stylesheet" type="text/css" href="/static/css/component.css">
{{str2html "<!--[if lt IE 9]><script>window.location.href='/static/ltie.html';</script><![endif]-->"}}
</head>
<body>
<nav class="navbar navbar-default  navbar-static-top" role="navigation">
  <div class="container">

  </div>
</nav>
<div class="container">
    <div class="main">
    <ul class="cbp_tmtimeline">
    {{range $k, $v := .Articles}}
      <li>
        <time class="cbp_tmtime" datetime="{{$v.PushTime}}"><span>4/10/13</span> <span>18:30</span></time>
        <div class="cbp_tmicon cbp_tmicon-phone"></div>
        <div class="cbp_tmlabel">
          <h2>{{$v.Title}}</h2>
          {{$v.Content|str2html}}
          </div>
      </li>
   {{end}}
    </ul>
  </div>
</div>
</body>
</html>
