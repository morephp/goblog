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
                <td>{{.hostname}}</td>
              </tr>
                  <tr>
                <td align="left">Go语言版本</td>
                <td>{{.goversion}} {{.arch}}</td>
              </tr>
                  <tr>
                <td align="left">操作系统</td>
                <td>{{.os}}</td>
              </tr>
                  <tr>
                <td align="left">CPU数量</td>
                <td>{{.cpunum}}</td>
              </tr>
                </tbody>
          </table>
            </div>
      </div>
          <div class="col-sm-6 col-md-6">
        <div class="panel panel-default"> <a href="#widget1container" class="panel-heading" data-toggle="collapse">系统信息</a>
              <table class="table table-bordered table-striped">
            <tr>
                  <td align="left">Beego版本</td>
                  <td>{{.beegoversion}}</td>
                </tr>
            <tbody>
                  <tr>
                <td align="left">版本信息</td>
                <td><span class="lable">{{.version}}</span></td>
              </tr>
                  <tr>
                <td align="left">用户数量</td>
                <td><span class="lable">{{.usernum}}</span></td>
              </tr>
                  <tr>
                <td align="left">博客数量</td>
                <td><span class="lable">{{.blognum}}</span></td>
              </tr>
                   </tbody>
          </table>
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
   