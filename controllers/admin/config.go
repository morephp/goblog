package admin

import (
	"github.com/astaxie/beego"
)

type ConfigController struct {
	beego.Controller
}

func (this *ConfigController) Index() {

	this.TplNames = "admin/link.tpl"
}
