package controllers

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/models"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	user := models.User{
		Username: "phpfans",
		Password: "jielei",
		Nickname: "蛮江",
	}

	models.AddUser(&user)
	this.StopRun()
	// this.Data["Website"] = "beego.me"
	// this.Data["Email"] = "astaxie@gmail.com"
	// this.TplNames = "index.tpl"
}

func (this *MainController) Read() {

}
