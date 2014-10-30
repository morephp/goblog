package main

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/morephp/blog/init"
	_ "github.com/morephp/blog/routers"
)

func main() {
	orm.RunCommand()
	beego.Run()
}
