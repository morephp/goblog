package routers

import (
	"github.com/astaxie/beego"
	"github.com/morephp/blog/controllers"
	"github.com/morephp/blog/controllers/admin"
)

func init() {
	beego.Router("/", &controllers.MainController{})

	beego.Router("/admin", &admin.IndexController{}, "*:Index")
	beego.Router("/admin/main", &admin.IndexController{}, "*:Main")

	beego.Router("/admin/login", &admin.LoginController{}, "post:Login")
	beego.Router("/admin/logout", &admin.LoginController{}, "*:Logout")

}
