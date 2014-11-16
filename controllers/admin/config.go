package admin

import (
// "github.com/astaxie/beego"
)

type ConfigController struct {
	baseController
}

func (this *ConfigController) Index() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/config.tpl"
}
