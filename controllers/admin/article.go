package admin

import (
	// "github.com/astaxie/beego"
	"github.com/morephp/blog/models"
	"time"
)

type ArticleController struct {
	baseController
}

func (this *ArticleController) Index() {

	this.Data["posts"] = models.ListArticle(this.Ctx)
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article.tpl"
}

func (this *ArticleController) Add() {
	if this.Ctx.Input.IsPost() {
		article := models.Article{}
		article.Content = this.GetString("content")
		article.Title = this.GetString("title")
		if author, ok := this.GetSession("nickname").(string); ok {
			article.Author = author
		}
		article.PushTime = time.Now()
		article.Times = 1

		if err := models.AddArticle(&article, this.GetString("tags")); err != nil {
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
		article.Id, _ = this.GetInt("id")
		article.Content = this.GetString("content")
		// article.Tags = this.GetString("tags")
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

	article.Id, _ = this.GetInt("id")
	article.Read()
	article.LoadRelated(&article)
	this.Data["Title"] = article.Title
	this.Data["Tags"] = article.Tag
	this.Data["Content"] = article.Content
	this.Data["Id"] = article.Id
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article_update.tpl"
}

func (this *ArticleController) Delete() {
	article := models.Article{}
	article.Id, _ = this.GetInt("id")
	if article.Delete() != nil {
		this.showMessage(0, "删除文章失败,请与管理员联系.")
	} else {
		this.showMessage(1, "删除修改成功.")
	}
	this.StopRun()
	return
}

func (this *ArticleController) Tag() {
	this.Data["Tags"] = models.ListTags(this.Ctx)
	this.Layout = "admin/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Sidebar"] = "admin/layout_sidebar.tpl"
	this.TplNames = "admin/article_tag.tpl"
}
