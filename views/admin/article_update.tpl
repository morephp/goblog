<link rel="stylesheet" href="/static/css/bootstrap-markdown.min.css">
<link rel="stylesheet" href="/static/css/bootstrapValidator.css"/>
<div class="content">
  <div class="header">
    <div class="stats">
      <p class="stat">&nbsp;</p>
    </div>
    <h1 class="page-title">MorePHP TEAM</h1>
    <ul class="breadcrumb">
      <li><a href="/admin/main">后台界面</a> </li>
      <li class="active">编辑文章</li>
    </ul>
  </div>
  <div class="main-content">
    <form class="form-horizontal" role="form" action="" method="post" id="article">
      <div class="form-group">
        <label for="input" class="col-sm-1 control-label">标 题</label>
        <div class="col-sm-11">
          <input type="text" class="form-control" name="title" placeholder="标题" value="{{.Title}}">
        </div>
      </div>
      <div class="form-group">
        <label for="input" class="col-sm-1 control-label">标签</label>
        <div class="col-sm-11">
          <input type="text" class="form-control" name="tag" placeholder="标签" disabled="disabled"  value="{{range $k, $v := .Tags}}{{$v.Name}},{{end}}">
        </div>
      </div>
      <div class="form-group">
        <label for="input" class="col-sm-1 control-label">内 容</label>
        <div class="col-sm-11">
       <textarea name="content" class="form-control" data-provide="markdown" rows="10" data-width="800" data-iconlibrary="fa" >{{.Content}}</textarea>
        </div>
      </div>
      <input name="id" type="hidden" value="{{.Id}}" />
      <div class="form-group">
        <div class="col-sm-offset-1 col-sm-11">
          <button type="submit" class="btn btn-default">提 交</button>
        </div>
      </div>
    </form>
    
    <footer>
      <hr>
      <p class="pull-right">&nbsp;</p>
      <p>© 2014 <a href="http://www.morephp.com" target="_blank">MorePHP TEAM</a></p>
    </footer>
  </div>
</div>
<script type="text/javascript" src="/static/js/bootstrap-markdown-editor.js"></script> 
<script type="text/javascript" src="/static/js/bootstrap-markdown-to.js"></script> 
<script type="text/javascript" src="/static/js/bootstrap-markdown.js"></script> 
<script type="text/javascript" src="/static/js/bootstrap-markdown-main.js"></script> 
<script type="text/javascript" src="/static/js/bootstrapValidator.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#article')
        .bootstrapValidator({
            message: '你输入的值无效',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                title: {
                    validators: {
                        notEmpty: {
                            message: '分类标签不能为空'
                        }
                    }
                },
                tag: {
                    validators: {
                        notEmpty: {
                            message: '分类标签不能为空'
                        }
                    }
                },
				content: {
                    validators: {
                        notEmpty: {
                            message: '文章内容不能为空'
                        }
                    }
                }
            }
        })
});
</script>
