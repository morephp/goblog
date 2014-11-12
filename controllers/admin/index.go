package admin

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/models"
	"os"
	"runtime"
)

type IndexController struct {
	baseController
}

func (this *IndexController) Main() {
	this.Data["hostname"], _ = os.Hostname()
	this.Data["goversion"] = runtime.Version()
	this.Data["os"] = runtime.GOOS
	this.Data["cpunum"] = runtime.NumCPU()
	this.Data["arch"] = runtime.GOARCH
	this.Data["beegoversion"] = beego.VERSION
	this.Data["version"] = beego.AppConfig.String("version")
	this.Data["usernum"], _ = new(models.User).Query().Count()
	this.Data["blognum"], _ = new(models.Article).Query().Count()
	this.TplNames = "admin/main.tpl"
}

func (this *IndexController) Info() {
	this.Redirect("/admin/main", 302)
}
