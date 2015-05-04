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
  MorePHP TEAM
  </div>
</nav>
<div class="container">
    <div class="main">
    <ul class="cbp_tmtimeline">
    {{range $k, $v := .Articles}}
      <li>
        <time class="cbp_tmtime" datetime="{{$v.PushTime}}"><span>{{dateformat $v.PushTime "06/01/02"}}</span> <span>{{dateformat $v.PushTime "15:04"}}</span></time>
        <div class="cbp_tmicon cbp_tmicon-earth"></div>
        <div class="cbp_tmlabel">
          <h3>{{$v.Title}}</h3>
          {{$v.Content|str2html}}
          </div>
      </li>
   {{end}}
       <li>
             <div class="cbp_tmend"><a id="more" href="javascript:;" style="cursor:hand" target="_self">More</a></div>
              <div class="cbp_tmendlabel"></div>
        </li>
    </ul>
  </div>
</div>
<!-- <nav class="navbar navbar-default  navbar-static-bootem" role="navigation">
  <div class="container">
  <div class="text-left"></div>
  </div>
</nav> -->
<script type="text/javascript">
    var next_page = 2;
    var loading = false;
    function loadMore() {
        var loading = true;
        $("#more").html("Loading");
        jQuery.ajax({
            url: "/more",
            data: {
                page: next_page,
                pageSize: 1,
                category: ''
            },
            success: function (html) {
                if (loading) {
                    $("#more").html("More");
                    if (!html || html.trim().length <= 0) {
                        $("#more").html("End");
                    } else {
                        $(html).insertAfter($('.cbp_tmtimeline li').eq(-2));
                        next_page = next_page + 1;
                    }
                    loading = false;
                }
            }
        });
    }
</script>
<script type="text/javascript">
$(document).ready(function(){
  $("#more").click(function(){
    loadMore();
    $("html,body").animate({scrollTop: $('#more').offset().top}, {duration:"slow"},800);
  });
});
</script>
</body>
</html>
