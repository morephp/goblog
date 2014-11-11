package admin

import (
// "github.com/astaxie/beego"
)

type ConfigController struct {
	baseController
}

func (this *ConfigController) Index() {

	this.TplNames = "admin/link.tpl"
}
