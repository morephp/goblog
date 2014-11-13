package admin

import (
// "github.com/astaxie/beego"
// "github.com/morephp/blog/library"
// "github.com/morephp/blog/models"
)

type UserController struct {
	baseController
}

func (this *UserController) Index() {
	this.TplNames = "admin/user.tpl"
}

func (this *UserController) Add() {
	this.TplNames = "admin/user_add.tpl"
}

func (this *UserController) Update() {

}

func (this *UserController) Del() {
	this.Redirect("/admin", 302)
}
