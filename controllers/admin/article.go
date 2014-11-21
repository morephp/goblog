package admin

import (
	// "github.com/astaxie/beego/session"
	"github.com/astaxie/beego/utils/pagination"
	"github.com/morephp/blog/models"
	"strconv"
	"time"
)

type ArticleController struct {
	baseController
}

func (this *ArticleController) Index() {
	article := models.Article{}
	articles := []*models.Article{}
	totalNum, _ := article.Query().Count()
	postsPerPage := 10
	paginator := pagination.SetPaginator(this.Ctx, postsPerPage, totalNum)
	article.Query().Limit(postsPerPage, paginator.Offset()).OrderBy("-Id").All(&articles)
	this.Data["posts"] = articles
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
		if author, ok := this.GetSession("nickname").(string); ok {
			article.Author = author
		}
		article.PushTime = time.Now()
		article.Times = 1
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
	article := models.Article{}
	if this.Ctx.Input.IsPost() {
		article.Id, _ = this.GetInt64("id")
		article.Content = this.GetString("content")
		article.Category = this.GetString("category")
		article.Title = this.GetString("title")
		if author, ok := this.GetSession("nickname").(string); ok {
			article.Author = author
		}
		if article.Update() != nil {
			this.showMessage(0, "修改文章失败,请与管理员联系.")
		} else {
			this.showMessage(1, "文章修改成功.")
		}
		this.StopRun()
		return
	}

	article.Id, _ = strconv.ParseInt(this.GetString("id"), 10, 32)
	article.Read()
	this.Data["Title"] = article.Title
	this.Data["Category"] = article.Category
	this.Data["Content"] = article.Content
	this.Data["Id"] = article.Id
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
