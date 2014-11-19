<div class="content">
  <div class="header">
    <div class="stats">
      <p class="stat">&nbsp;</p>
    </div>
    <h1 class="page-title">MorePHP TEAM</h1>
    <ul class="breadcrumb">
      <li><a href="/admin/main">后台界面</a> </li>
      <li class="active">文章列表</li>
    </ul>
  </div>
  <div class="main-content">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>标 题</th>
          <th>类 别</th>
          <th>点击量</th>
          <th>发布人</th>
          <th>发布时间</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Mark</td>
          <td>Tompson</td>
          <td>the_mark7</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><a href="user.html"><i class="fa fa-pencil"></i></a> <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a></td>
        </tr>
        <tr>
          <td>2</td>
          <td>Ashley</td>
          <td>Jacobs</td>
          <td>ash11927</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><a href="user.html"><i class="fa fa-pencil"></i></a> <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a></td>
        </tr>
      </tbody>
    </table>
     {{if .paginator.HasPages}}
 <ul class="pagination pagination">
     {{if .paginator.HasPrev}}
         <li><a href="{{.paginator.PageLinkFirst}}">{{ i18n .Lang "paginator.first_page"}}</a></li>
         <li><a href="{{.paginator.PageLinkPrev}}">&laquo;</a></li>
     {{else}}
         <li class="disabled"><a>{{ i18n .Lang "paginator.first_page"}}</a></li>
         <li class="disabled"><a>&laquo;</a></li>
     {{end}}
     {{range $index, $page := .paginator.Pages}}
         <li{{if $.paginator.IsActive .}} class="active"{{end}}>
             <a href="{{$.paginator.PageLink $page}}">{{$page}}</a>
         </li>
     {{end}}
     {{if .paginator.HasNext}}
         <li><a href="{{.paginator.PageLinkNext}}">&raquo;</a></li>
         <li><a href="{{.paginator.PageLinkLast}}">{{ i18n .Lang "paginator.last_page"}}</a></li>
     {{else}}
         <li class="disabled"><a>&raquo;</a></li>
         <li class="disabled"><a>{{ i18n .Lang "paginator.last_page"}}</a></li>
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
