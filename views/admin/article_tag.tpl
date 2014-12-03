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
          <li class="active">标签管理</li>
        </ul>
  </div>
      <div class="main-content">
<table class="table">
  <thead>
    <tr>
      <th>#</th>
      <th>标　签</th>
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>
  {{range $k, $v := .Tags }}
    <tr>
      <td>{{$v.Id}}</td>
      <td>{{$v.Name}}</td>
      <td>
          <a href="/admin/article/tag/?act=update&id={{$v.Id}}"><i class="fa fa-pencil"></i></a>
          <a href="javascript:void(0)" onclick="dodel({{$v.Id}})" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
    {{end}}
   </tbody>
</table>
{{if .paginator.HasPages}}
 <ul class="pagination pagination">
     {{if .paginator.HasPrev}}
         <li><a href="{{.paginator.PageLinkFirst}}">首页</a></li>
         <li><a href="{{.paginator.PageLinkPrev}}">&laquo;</a></li>
     {{else}}
         <li class="disabled"><a>首页</a></li>
         <li class="disabled"><a>&laquo;</a></li>
     {{end}}
     {{range $index, $page := .paginator.Pages}}
         <li{{if $.paginator.IsActive .}} class="active"{{end}}>
             <a href="{{$.paginator.PageLink $page}}">{{$page}}</a>
         </li>
     {{end}}
     {{if .paginator.HasNext}}
         <li><a href="{{.paginator.PageLinkNext}}">&raquo;</a></li>
         <li><a href="{{.paginator.PageLinkLast}}">末页</a></li>
     {{else}}
         <li class="disabled"><a>&raquo;</a></li>
         <li class="disabled"><a>末页</a></li>
     {{end}}
 </ul>
 {{end}}
        <footer>
          <hr>
          <p class="pull-right">&nbsp;</p>
          <p>© 2014 <a href="http://www.morephp.com" target="_blank">MorePHP TEAM</a></p>
        </footer>
  </div>
    </div>

     <div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">删除消息</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>你是否真的要删除该标签?<br>删除后将不能恢复.</p>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取 消</button>
            <a href="#" class="btn btn-danger" id="delete">删 除</a>
        </div>
      </div>
    </div>
</div>
    <script type="text/javascript">
    function dodel(id){        
        $("#delete").attr('href','/admin/article/tag/?act=del&id='+id);
        $('.modal').modal('show');
    }
    $(function() {
        $('.btn btn-default').click(function(){return false;});     
    });
     
</script>