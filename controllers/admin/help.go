package admin

import (
	"github.com/astaxie/beego"
)

type HelpController struct {
	beego.Controller
}

func (this *HelpController) Index() {

	this.TplNames = "admin/help.tpl"
}
