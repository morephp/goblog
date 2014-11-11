package admin

import (
// "github.com/astaxie/beego"

)

type IndexController struct {
	baseController
}

func (this *IndexController) NestPrepare() {

}

func (this *IndexController) Main() {
	this.TplNames = "admin/main.tpl"
}

func (this *IndexController) Info() {
	this.TplNames = "admin/info.tpl"
}
