<link rel="stylesheet" href="/static/css/bootstrap-markdown.min.css">
<link rel="stylesheet" href="/static/css/bootstrapValidator.css"/>
<link rel="stylesheet" href="/static/editormd/css/editormd.css" />
<div class="content">
  <div class="header">
    <div class="stats">
      <p class="stat">&nbsp;</p>
    </div>
    <h1 class="page-title">MorePHP TEAM</h1>
    <ul class="breadcrumb">
      <li><a href="/admin/main">后台界面</a> </li>
      <li class="active">发布文章</li>
    </ul>
  </div>
  <div class="main-content">
    <form class="form-horizontal" role="form" action="" method="post" id="article">
      <div class="form-group">
        <label for="input" class="col-sm-1 control-label">标 题</label>
        <div class="col-sm-11">
          <input type="text" class="form-control" name="title" placeholder="标题">
        </div>
      </div>
      <div class="form-group">
        <label for="input" class="col-sm-1 control-label">标签</label>
        <div class="col-sm-11">
          <input type="text" class="form-control" name="tags" placeholder="标签">
        </div>
      </div>
      <div class="form-group">
        <label for="input" class="col-sm-1 control-label">内 容</label>
        <div class="col-sm-11">
         <div id="test-editormd" style="">
                <textarea style="display:none;"></textarea>
            </div>
        </div>
      </div>
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

 <script src="/static/js/jquery-1.11.1.min.js"></script>
        <script src="/static/editormd/editormd.amd.js"></script>
        <script type="text/javascript">
        var testEditor;
            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "100%",
                    height  : 640,
                    path    : "/static/editormd/lib/"
                });
            });
        </script>