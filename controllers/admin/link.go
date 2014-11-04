package admin

import (
	"github.com/astaxie/beego"
)

type LinkController struct {
	beego.Controller
}

func (this *LinkController) Index() {

	this.TplNames = "admin/link.tpl"
}

func (this *LinkController) Add() {
	this.TplNames = "admin/link_add.tpl"
}
