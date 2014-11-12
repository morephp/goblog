package admin

import (
	// "github.com/astaxie/beego/session"
	"github.com/morephp/blog/models"
	"github.com/morephp/blog/utils"
)

type LoginController struct {
	baseController
}

func (this *LoginController) Index() {
	this.TplNames = "admin/login.tpl"
}

func (this *LoginController) Login() {
	username := this.GetString("username")
	password := this.GetString("password")
	remember := this.GetString("remember")
	var user models.User
	user.Username = username
	if user.Read("username") == nil {
		if utils.EncodeMd5(password) == user.Password {
			this.SetSession("login", true)
			this.SetSession("username", user.Username)
			this.SetSession("nickname", user.Nickname)
			if remember == "yes" {

			}
			this.Redirect("/admin/main", 302)
		}
	}
	this.showMessage(1, "你输入的用户名或密码错。")
	this.StopRun()
}

func (this *LoginController) Logout() {
	this.DelSession("login")
	this.DelSession("username")
	this.DelSession("nickname")
	this.DestroySession()
	this.Redirect("/admin", 302)
}
