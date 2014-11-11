package admin

import (
// "github.com/astaxie/beego"
)

type DiscussController struct {
	baseController
}

func (this *DiscussController) Index() {

	this.TplNames = "admin/discuss.tpl"
}
