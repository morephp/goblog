package admin

import (
// "github.com/astaxie/beego"
)

type DiscussController struct {
	baseController
}

func (this *DiscussController) Index() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/discuss.tpl"
}
