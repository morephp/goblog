package controllers

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/models"
	"math/rand"
	"time"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	rand.Seed(time.Now().UnixNano())
	// iconS := []string{"phone","email","screen",	"earth",}
	// this.Data["Icon"] = iconS[rand.Intn(4)]
	page, _ := this.GetInt("page")
	this.Data["Articles"] = models.ListMoreArticle(this.Ctx, page)
	this.TplNames = "index.tpl"
}

func (this *MainController) More() {
	page, _ := this.GetInt("page")
	this.Data["Articles"] = models.ListMoreArticle(this.Ctx, page)
	this.TplNames = "more.tpl"
}
