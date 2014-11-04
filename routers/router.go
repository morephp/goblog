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
	beego.Router("/admin/info", &admin.IndexController{}, "*:Info")

	beego.Router("/admin/user", &admin.UserController{}, "*:Index")
	beego.Router("/admin/user/add", &admin.UserController{}, "*:Add")
	beego.Router("/admin/user/update", &admin.UserController{}, "*:Update")
	beego.Router("/admin/user/del", &admin.UserController{}, "*:Del")

	beego.Router("/admin/article/list", &admin.ArticleController{}, "*:Index")
	beego.Router("/admin/article/add", &admin.ArticleController{}, "*:Add")
	beego.Router("/admin/article/update", &admin.ArticleController{}, "*:Update")
	beego.Router("/admin/article/del", &admin.ArticleController{}, "*:Del")
	beego.Router("/admin/article/tag", &admin.ArticleController{}, "*:Tag")

	beego.Router("/admin/discuss", &admin.DiscussController{}, "*:Index")

	beego.Router("/admin/link/list", &admin.LinkController{}, "*:Index")
	beego.Router("/admin/link/add", &admin.LinkController{}, "*:Add")

	beego.Router("/admin/config", &admin.ConfigController{}, "*:Index")
	beego.Router("/admin/help", &admin.HelpController{}, "*:Index")

	beego.Router("/admin/login", &admin.LoginController{}, "post:Login")
	beego.Router("/admin/logout", &admin.LoginController{}, "*:Logout")

}
