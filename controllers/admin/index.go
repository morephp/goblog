package admin

import (
	"github.com/astaxie/beego"
)

type IndexController struct {
	beego.Controller
}

func (this *IndexController) Index() {
	this.Data["WebSiteName"] = "摩尔技术团队博客"
	this.TplNames = "admin/index.tpl"
}

func (this *IndexController) Main() {
	this.Data["WebSiteName"] = "摩尔技术团队博客"
	this.TplNames = "admin/main.tpl"
}
