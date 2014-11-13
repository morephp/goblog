package admin

import (
	"github.com/astaxie/beego"
)

type baseController struct {
	beego.Controller
	modulesName    string
	actionName     string
	controllerName string
}

func (this *baseController) Prepare() {
	this.modulesName = "admin"
	this.controllerName, this.actionName = this.GetControllerAndAction()
	this.checkPermission()

	this.Data["WebSiteName"] = "MorePHP TEAM Blog"
	this.Data["NickName"] = this.GetSession("nickname")
}

func (this *baseController) checkPermission() {
	if this.controllerName != "LoginController" {
		if this.GetSession("login") != true {
			this.showMessage(0, "你没有登录系统，无权查看相关信息。")
		}
	}
}

func (this *baseController) showMessage(mold int, msg ...string) {
	if len(msg) == 1 {
		msg = append(msg, this.Ctx.Request.Referer())
	}
	this.Data["msg"] = msg[0]
	this.Data["redirect"] = msg[1]
	this.Data["type"] = mold
	this.TplNames = "admin/message.tpl"
	this.Render()
	this.StopRun()
}
