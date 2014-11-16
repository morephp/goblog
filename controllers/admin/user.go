package admin

import (
// "github.com/astaxie/beego"
// "github.com/morephp/blog/library"
// "github.com/morephp/blog/models"
)

type UserController struct {
	baseController
}

func (this *UserController) Index() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/user.tpl"
}

func (this *UserController) Add() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/user_add.tpl"
}

func (this *UserController) Update() {

}

func (this *UserController) Del() {
	this.Redirect("/admin", 302)
}
