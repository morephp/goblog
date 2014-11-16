package admin

import (
// "github.com/astaxie/beego"
// "github.com/morephp/blog/library"
// "github.com/morephp/blog/models"
)

type ArticleController struct {
	baseController
}

func (this *ArticleController) Index() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article.tpl"
}

func (this *ArticleController) Add() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article_add.tpl"
}

func (this *ArticleController) Update() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article_update.tpl"
}

func (this *ArticleController) Del() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article_del.tpl"
}
func (this *ArticleController) Tag() {
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article_tag.tpl"
}
