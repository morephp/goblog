package admin

import (
	"github.com/astaxie/beego"
	// "github.com/morephp/blog/library"
	// "github.com/morephp/blog/models"
)

type LoginController struct {
	beego.Controller
}

func (this *LoginController) Login() {
	this.Redirect("/admin/main", 302)
}

func (this *LoginController) Logout() {
	this.Redirect("/admin", 302)
}
