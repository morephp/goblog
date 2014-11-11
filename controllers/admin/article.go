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
	this.TplNames = "admin/article.tpl"
}

func (this *ArticleController) Add() {
	this.TplNames = "admin/article_add.tpl"
}

func (this *ArticleController) Update() {
	this.TplNames = "admin/article_update.tpl"
}

func (this *ArticleController) Del() {
	this.TplNames = "admin/article_del.tpl"
}
func (this *ArticleController) Tag() {
	this.TplNames = "admin/article_tag.tpl"
}
