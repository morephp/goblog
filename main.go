package main

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
	_ "github.com/morephp/blog/routers"
)

var Config = beego.AppConfig

func init() {
	dbUser := Config.String("dbuser")
	dbPass := Config.String("dbpass")
	dbHost := Config.String("dbhost")
	dbPort := Config.String("dbport")
	dbName := Config.String("dbname")
	dbLinker := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8", dbUser, dbPass, dbHost, dbPort, dbName) + "&loc=Asia%2FChongqing"
	orm.RegisterDriver("mysql", orm.DR_MySQL)
	orm.RegisterDataBase("default", "mysql", dbLinker)

}

func main() {
	orm.RunCommand()
	// orm.Debug = true
	beego.Run()
}
