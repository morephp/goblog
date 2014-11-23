package controllers

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/models"
	"github.com/russross/blackfriday"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	article := models.Article{}
	article.Query().OrderBy("-id").One(&article)

	this.Data["Content"] = string(blackfriday.MarkdownBasic([]byte(article.Content)))
	this.TplNames = "index.tpl"
}

func (this *MainController) Read() {

}
