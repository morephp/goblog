package admin

import (
	"github.com/astaxie/beego"
	// "github.com/morephp/blog/library"
	// "github.com/morephp/blog/models"
)

type UserController struct {
	beego.Controller
}

func (this *UserController) Index() {
	this.TplNames = "admin/users.tpl"
}

func (this *UserController) Add() {
	this.Redirect("/admin/main", 302)
}

func (this *UserController) Update() {

}

func (this *UserController) Del() {
	this.Redirect("/admin", 302)
}
