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

	this.Data["WebSiteName"] = beego.AppName
	this.Data["NickName"] = this.GetSession("nickname")

}

func (this *baseController) checkPermission() {
	if this.controllerName != "LoginController" {
		if this.GetSession("login") != true {
			this.Redirect("/admin", 302)
		}
	}
}
