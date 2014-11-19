package admin

import (
	"github.com/astaxie/beego/utils/pagination"
	"github.com/morephp/blog/models"
	"time"
)

type ArticleController struct {
	baseController
}

func (this *ArticleController) Index() {
	postsPerPage := 20
	paginator := pagination.SetPaginator(this.Ctx, postsPerPage, 11)

	// fetch the next 20 posts
	// this.Data["posts"] = pagination.ListPostsByOffsetAndLimit(paginator.Offset(), postsPerPage)

	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article.tpl"
}

func (this *ArticleController) Add() {
	if this.Ctx.Input.IsPost() {
		article := models.Article{}
		article.Content = this.GetString("content")
		article.Category = this.GetString("category")
		article.Title = this.GetString("title")
		article.PushTime = time.Now()
		if article.Insert() != nil {
			this.showMessage(0, "添加文章失败,请与管理员联系.")
		} else {
			this.showMessage(1, "文章增加成功.")
		}
		this.StopRun()
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
