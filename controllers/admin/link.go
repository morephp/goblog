package admin

import (
// "github.com/astaxie/beego"
)

type LinkController struct {
	baseController
}

func (this *LinkController) Index() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/link.tpl"
}

func (this *LinkController) Add() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/link_add.tpl"
}
