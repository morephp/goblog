package admin

import (
	"github.com/astaxie/beego"
	"log"
)

type HelpController struct {
	baseController
}

func (this *HelpController) Index() {
	log.Println(beego.AppName, beego.EnableGzip)
	this.TplNames = "admin/help.tpl"
}
