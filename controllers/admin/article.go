package admin

import (
// "github.com/russross/blackfriday"
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
	if this.Ctx.Input.IsPost() {

		// content := blackfriday.MarkdownBasic([]byte(this.GetString("content")))
		// this.Data["Content"] = string(content)
		// this.TplNames = "admin/test.tpl"
		return
	}
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
