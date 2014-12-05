package main

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
	_ "github.com/morephp/blog/error"
	_ "github.com/morephp/blog/routers"
)

func init() {
	dbUser := beego.AppConfig.String("dbuser")
	dbPass := beego.AppConfig.String("dbpass")
	dbHost := beego.AppConfig.String("dbhost")
	dbPort := beego.AppConfig.String("dbport")
	dbName := beego.AppConfig.String("dbname")
	dbLinker := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8", dbUser, dbPass, dbHost, dbPort, dbName) + "&loc=Asia%2FChongqing"
	orm.RegisterDriver("mysql", orm.DR_MySQL)
	orm.RegisterDataBase("default", "mysql", dbLinker)

}

func main() {
	orm.RunCommand()
	orm.Debug = true
	beego.Run()
}
