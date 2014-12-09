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

	this.Data["Articles"] = models.ListArticleHome(this.Ctx)
	this.TplNames = "index.tpl"
}

func (this *MainController) Read() {

}
