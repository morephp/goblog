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
<link rel="stylesheet" href="/static/css/bootstrapValidator.css"/>
<script src="/static/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="/static/js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="../static/js/bootstrapValidator.min.js"></script>
   
</head>
<body class=" theme-blue">
<div class="navbar navbar-default" role="navigation">
  <div class="navbar-header"> </div>
  <div class="navbar-collapse collapse" style="height: 1px;"> </div>
</div>
</div>
<div class="dialog">
  <div class="panel panel-default">
    <p class="panel-heading no-collapse">用户登录</p>
    <div class="panel-body">
      <form action="/admin/login" method="post" id="user">
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
          <input type="checkbox" value="yes" name="remember">
          记住我</label>
        <div class="clearfix"></div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('#user')
        .bootstrapValidator({
            message: '你输入的值无效',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: '用户名无效',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 16,
                            message: '你输入的用户名必须大于６小于１６'
                        },
                        /*remote: {
                            url: 'remote.php',
                            message: 'The username is not available'
                        },*/
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名规则为大小写字母、数字、下划线组合'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                }
            }
        })
});
</script>

</body>
</html>
