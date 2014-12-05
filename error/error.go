package error

import (
	"github.com/astaxie/beego"
	"html/template"
	"net/http"
)

func page_not_found(rw http.ResponseWriter, r *http.Request) {
	t, _ := template.New("404.html").ParseFiles(beego.ViewsPath + "/404.html")
	data := make(map[string]interface{})
	data["Title"] = beego.AppConfig.String("appname")
	t.Execute(rw, data)
}

func page_not_forbidden(rw http.ResponseWriter, r *http.Request) {
	t, _ := template.New("403.html").ParseFiles(beego.ViewsPath + "/403.html")
	data := make(map[string]interface{})
	data["Title"] = beego.AppConfig.String("appname")
	t.Execute(rw, data)
}

func init() {
	beego.Errorhandler("404", page_not_found)
	beego.Errorhandler("403", page_not_forbidden)
}
