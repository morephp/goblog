package controllers

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/models"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["Articles"] = models.ListArticleHome(this.Ctx)
	this.TplNames = "index.tpl"
}

func (this *MainController) Read() {

}
