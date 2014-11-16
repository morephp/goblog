package admin

import (
// "github.com/astaxie/beego"
)

type HelpController struct {
	baseController
}

func (this *HelpController) Index() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/help.tpl"
}
