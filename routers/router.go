package routers

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
}
