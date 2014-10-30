package controllers

import (
	"fmt"
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
	user, err := models.FindUser(22)
	if err == nil {
		fmt.Println("Sucess")
	} else {
		fmt.Println(err.Error())
	}

	this.StopRun()
	// this.Data["Website"] = "beego.me"
	// this.Data["Email"] = "astaxie@gmail.com"
	// this.TplNames = "index.tpl"
}

func (this *MainController) Read() {

}
