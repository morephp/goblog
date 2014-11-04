package admin

import (
	"github.com/astaxie/beego"
)

type DiscussController struct {
	beego.Controller
}

func (this *DiscussController) Index() {

	this.TplNames = "admin/discuss.tpl"
}
