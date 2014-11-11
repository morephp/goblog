package controllers

import (
	"github.com/astaxie/beego"
	// "github.com/morephp/blog/models"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["Website"] = "beego.me"
	this.Data["Email"] = "astaxie@gmail.com"
	this.TplNames = "index.tpl"
}

func (this *MainController) Read() {

}
